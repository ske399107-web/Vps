package com.ffrt.proxyread;

import android.net.VpnService;
import com.ffrt.proxyread.PacketEngine;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.Socket;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import o.AbstractC0212jd;
import o.AbstractC0487x9;
import o.C0450vc;
import o.C0470wc;
import o.C0490xc;
import o.C0509yc;
import o.C0528zc;
import o.H2;
import o.Ha;
import o.Hb;
import o.InterfaceC0426u8;
import o.Tg;
import o.Uf;
import o.Ug;
import o.V6;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.crypto.digests.Blake2xsDigest;
import org.bouncycastle.pqc.crypto.rainbow.GF2Field;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class PacketEngine {
    public static final C0470wc Companion = new Object();
    private static final int MATCH_SECRET_WINDOW = 4096;
    private static final int MSS = 2048;
    private static final int POSE_Q = 64;
    private static final int TCP_SNIFF_TAIL = 4096;
    private static int packetCounter;
    private final ConcurrentHashMap<String, InetAddress> addrCache;
    private final LinkedBlockingQueue<C0490xc> lookQ;
    private final LinkedBlockingQueue<C0490xc> poseQ;
    private final AtomicBoolean running;
    private final LinkedBlockingQueue<C0490xc> s2cQ;
    private final ConcurrentHashMap<String, C0509yc> tcpFlows;
    private final FileInputStream tunIn;
    private final Object tunLock;
    private final FileOutputStream tunOut;
    private final ConcurrentHashMap<String, C0528zc> udpFlows;
    private final VpnService vpn;

    public PacketEngine(VpnService vpnService, FileInputStream fileInputStream, FileOutputStream fileOutputStream) {
        AbstractC0487x9.o(vpnService, "vpn");
        AbstractC0487x9.o(fileInputStream, "tunIn");
        AbstractC0487x9.o(fileOutputStream, "tunOut");
        this.vpn = vpnService;
        this.tunIn = fileInputStream;
        this.tunOut = fileOutputStream;
        this.running = new AtomicBoolean(true);
        this.tunLock = new Object();
        this.udpFlows = new ConcurrentHashMap<>();
        this.tcpFlows = new ConcurrentHashMap<>();
        this.addrCache = new ConcurrentHashMap<>();
        this.poseQ = new LinkedBlockingQueue<>(64);
        this.lookQ = new LinkedBlockingQueue<>(1);
        this.s2cQ = new LinkedBlockingQueue<>(1);
    }

    private final byte[] buildTcp(String str, int i, String str2, int i2, long j, long j2, int i3, byte[] bArr, int i4, int i5) {
        byte[] bArr2;
        if (i5 > 0) {
            bArr2 = new byte[]{2, 4, (byte) ((i5 >>> 8) & GF2Field.MASK), (byte) (i5 & GF2Field.MASK)};
        } else {
            bArr2 = new byte[0];
        }
        int length = bArr2.length;
        int i6 = length + 20;
        int i7 = length + 40;
        int length2 = bArr.length + i7;
        byte[] bArr3 = new byte[length2];
        bArr3[0] = 69;
        bArr3[8] = 64;
        bArr3[9] = 6;
        C0470wc c0470wc = Companion;
        C0470wc.c(c0470wc, bArr3, 2, length2);
        AbstractC0212jd.a.getClass();
        C0470wc.c(c0470wc, bArr3, 4, AbstractC0212jd.b.b());
        C0470wc.b(c0470wc, bArr3, 12, str);
        C0470wc.b(c0470wc, bArr3, 16, str2);
        bArr3[10] = 0;
        bArr3[11] = 0;
        C0470wc.c(c0470wc, bArr3, 10, C0470wc.f(bArr3, 0, 20, 0));
        C0470wc.c(c0470wc, bArr3, 20, i);
        C0470wc.c(c0470wc, bArr3, 22, i2);
        C0470wc.d(c0470wc, bArr3, 24, j);
        C0470wc.d(c0470wc, bArr3, 28, j2);
        bArr3[32] = (byte) ((i6 / 4) << 4);
        bArr3[33] = (byte) i3;
        C0470wc.c(c0470wc, bArr3, 34, i4);
        if (bArr2.length != 0) {
            System.arraycopy(bArr2, 0, bArr3, 40, bArr2.length);
        }
        if (bArr.length != 0) {
            System.arraycopy(bArr, 0, bArr3, i7, bArr.length);
        }
        C0470wc.c(c0470wc, bArr3, 36, C0470wc.f(bArr3, 20, i6 + bArr.length, C0470wc.g(str2) + C0470wc.g(str) + 6 + bArr.length + i6));
        return bArr3;
    }

    public static /* synthetic */ byte[] buildTcp$default(PacketEngine packetEngine, String str, int i, String str2, int i2, long j, long j2, int i3, byte[] bArr, int i4, int i5, int i6, Object obj) {
        return packetEngine.buildTcp(str, i, str2, i2, j, j2, i3, bArr, (i6 & 256) != 0 ? 65535 : i4, (i6 & 512) != 0 ? 0 : i5);
    }

    public static void dumpLog(String str, String str2, String str3, int i, byte[] bArr, int i2, int i3) {
        if (bArr != null && i3 > 0) {
            try {
                File file = new File("/storage/emulated/0/Android/data/com.ffrt.proxyread/files/#DUMP/");
                if (!file.exists()) {
                    file.mkdirs();
                }
                FileOutputStream fileOutputStream = new FileOutputStream(new File(file, str), true);
                int i4 = packetCounter + 1;
                packetCounter = i4;
                StringBuilder sb = new StringBuilder();
                sb.append("\n#");
                sb.append(i4);
                sb.append(" - ");
                sb.append(str2);
                sb.append(" - ");
                sb.append(str3);
                sb.append(":");
                sb.append(i);
                sb.append("\n");
                for (int i5 = 0; i5 < i3; i5++) {
                    int i6 = bArr[i2 + i5] & 255;
                    sb.append("0123456789abcdef".charAt(i6 >>> 4));
                    sb.append("0123456789abcdef".charAt(i6 & 15));
                }
                sb.append("\n");
                fileOutputStream.write(sb.toString().getBytes());
                fileOutputStream.close();
            } catch (Exception e) {
            }
        }
    }

    private final InetAddress inet(String str) {
        InetAddress putIfAbsent;
        ConcurrentHashMap<String, InetAddress> concurrentHashMap = this.addrCache;
        InetAddress inetAddress = concurrentHashMap.get(str);
        if (inetAddress == null && (putIfAbsent = concurrentHashMap.putIfAbsent(str, (inetAddress = InetAddress.getByName(str)))) != null) {
            inetAddress = putIfAbsent;
        }
        AbstractC0487x9.n(inetAddress, "getOrPut(...)");
        return inetAddress;
    }

    /* JADX WARN: Removed duplicated region for block: B:4:0x000c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final o.Ug loop$lambda$0(com.ffrt.proxyread.PacketEngine r4) {
        /*
            r0 = -4
            android.os.Process.setThreadPriority(r0)
        L4:
            java.util.concurrent.atomic.AtomicBoolean r0 = r4.running
            boolean r0 = r0.get()
            if (r0 == 0) goto L26
            java.util.concurrent.LinkedBlockingQueue<o.xc> r0 = r4.lookQ
            r1 = 200(0xc8, double:9.9E-322)
            java.util.concurrent.TimeUnit r3 = java.util.concurrent.TimeUnit.MILLISECONDS
            java.lang.Object r0 = r0.poll(r1, r3)
            o.xc r0 = (o.C0490xc) r0
            if (r0 != 0) goto L1b
            goto L4
        L1b:
            java.lang.String r1 = o.Nc.a     // Catch: java.lang.Exception -> L4
            byte[] r1 = r0.b     // Catch: java.lang.Exception -> L4
            java.lang.String r0 = r0.c     // Catch: java.lang.Exception -> L4
            r2 = 0
            o.Nc.e(r2, r1, r0)     // Catch: java.lang.Exception -> L4
            goto L4
        L26:
            o.Ug r4 = o.Ug.a
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ffrt.proxyread.PacketEngine.loop$lambda$0(com.ffrt.proxyread.PacketEngine):o.Ug");
    }

    /* JADX WARN: Removed duplicated region for block: B:4:0x000c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final o.Ug loop$lambda$1(com.ffrt.proxyread.PacketEngine r4) {
        /*
            r0 = -4
            android.os.Process.setThreadPriority(r0)
        L4:
            java.util.concurrent.atomic.AtomicBoolean r0 = r4.running
            boolean r0 = r0.get()
            if (r0 == 0) goto L3d
            java.util.concurrent.LinkedBlockingQueue<o.xc> r0 = r4.s2cQ
            r1 = 200(0xc8, double:9.9E-322)
            java.util.concurrent.TimeUnit r3 = java.util.concurrent.TimeUnit.MILLISECONDS
            java.lang.Object r0 = r0.poll(r1, r3)
            o.xc r0 = (o.C0490xc) r0
            if (r0 != 0) goto L1b
            goto L4
        L1b:
            java.lang.String r1 = o.Nc.a     // Catch: java.lang.Exception -> L4
            byte[] r1 = r0.b     // Catch: java.lang.Exception -> L4
            java.lang.String r0 = r0.c     // Catch: java.lang.Exception -> L4
            java.lang.String r2 = "inner"
            o.AbstractC0487x9.o(r1, r2)     // Catch: java.lang.Exception -> L4
            java.lang.String r2 = "flowId"
            o.AbstractC0487x9.o(r0, r2)     // Catch: java.lang.Exception -> L4
            int r2 = r1.length     // Catch: java.lang.Exception -> L4
            if (r2 != 0) goto L2f
            goto L4
        L2f:
            o.Nc.c(r0)     // Catch: java.lang.Exception -> L4
            java.lang.Object r0 = o.Nc.n     // Catch: java.lang.Exception -> L4
            monitor-enter(r0)     // Catch: java.lang.Exception -> L4
            o.Nc.f(r1)     // Catch: java.lang.Throwable -> L3a
            monitor-exit(r0)     // Catch: java.lang.Exception -> L4
            goto L4
        L3a:
            r1 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Exception -> L4
            throw r1     // Catch: java.lang.Exception -> L4
        L3d:
            o.Ug r4 = o.Ug.a
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ffrt.proxyread.PacketEngine.loop$lambda$1(com.ffrt.proxyread.PacketEngine):o.Ug");
    }

    /* JADX WARN: Removed duplicated region for block: B:3:0x0008  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final o.Ug loop$lambda$2(com.ffrt.proxyread.PacketEngine r4) {
        /*
        L0:
            java.util.concurrent.atomic.AtomicBoolean r0 = r4.running
            boolean r0 = r0.get()
            if (r0 == 0) goto L23
            java.util.concurrent.LinkedBlockingQueue<o.xc> r0 = r4.poseQ
            r1 = 200(0xc8, double:9.9E-322)
            java.util.concurrent.TimeUnit r3 = java.util.concurrent.TimeUnit.MILLISECONDS
            java.lang.Object r0 = r0.poll(r1, r3)
            o.xc r0 = (o.C0490xc) r0
            if (r0 != 0) goto L17
            goto L0
        L17:
            java.lang.String r1 = o.Nc.a     // Catch: java.lang.Exception -> L0
            boolean r1 = r0.a     // Catch: java.lang.Exception -> L0
            byte[] r2 = r0.b     // Catch: java.lang.Exception -> L0
            java.lang.String r0 = r0.c     // Catch: java.lang.Exception -> L0
            o.Nc.e(r1, r2, r0)     // Catch: java.lang.Exception -> L0
            goto L0
        L23:
            o.Ug r4 = o.Ug.a
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ffrt.proxyread.PacketEngine.loop$lambda$2(com.ffrt.proxyread.PacketEngine):o.Ug");
    }

    private final void offerLatest(LinkedBlockingQueue<C0490xc> linkedBlockingQueue, C0490xc c0490xc) {
        if (linkedBlockingQueue.offer(c0490xc)) {
            return;
        }
        linkedBlockingQueue.poll();
        linkedBlockingQueue.offer(c0490xc);
    }

    private final void offerPose(boolean z, byte[] bArr, String str) {
        C0490xc c0490xc = new C0490xc(z, bArr, str);
        if (this.poseQ.offer(c0490xc)) {
            return;
        }
        this.poseQ.poll();
        this.poseQ.offer(c0490xc);
    }

    private final void onTcp(byte[] bArr, int i, int i2) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        byte[] bArr2;
        boolean z5;
        C0509yc c0509yc;
        int i3;
        int i4;
        int i5;
        int i6 = i2 + 20;
        if (i < i6) {
            return;
        }
        C0470wc c0470wc = Companion;
        String a = C0470wc.a(c0470wc, bArr, 12);
        String a2 = C0470wc.a(c0470wc, bArr, 16);
        int e = C0470wc.e(c0470wc, bArr, i2);
        int e2 = C0470wc.e(c0470wc, bArr, i2 + 2);
        long j = ((bArr[i2 + 5] & 255) << 16) | ((bArr[i2 + 4] & 255) << 24) | ((bArr[i2 + 6] & 255) << 8) | (bArr[i2 + 7] & 255);
        byte b = bArr[i2 + 13];
        int i7 = ((bArr[i2 + 12] >>> 4) & 15) * 4;
        if ((b & 2) != 0) {
            z = true;
        } else {
            z = false;
        }
        if ((b & 16) != 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        if ((b & 4) != 0) {
            z3 = true;
        } else {
            z3 = false;
        }
        if ((b & 1) != 0) {
            z4 = true;
        } else {
            z4 = false;
        }
        String str = a + ":" + e + "->" + a2 + ":" + e2;
        if (z3) {
            C0509yc remove = this.tcpFlows.remove(str);
            if (remove != null) {
                remove.b();
                return;
            }
            return;
        }
        if (z && !z2) {
            if (this.tcpFlows.containsKey(str)) {
                return;
            }
            C0509yc c0509yc2 = new C0509yc(a, e, a2, e2, j);
            int i8 = i2 + i7;
            int length = bArr.length;
            if (i8 > length) {
                i8 = length;
            }
            int i9 = i6;
            while (true) {
                i3 = 1460;
                if (i9 >= i8 || (i4 = bArr[i9] & 255) == 0) {
                    break;
                }
                if (i4 != 1) {
                    if (i4 != 2) {
                        int i10 = i9 + 1;
                        if (i10 >= i8 || (i5 = bArr[i10] & GF2Field.MASK) < 2) {
                            break;
                        } else {
                            i9 += i5;
                        }
                    } else {
                        int i11 = i9 + 3;
                        if (i11 < i8 && (bArr[i9 + 1] & 255) == 4) {
                            i3 = (bArr[i11] & 255) | ((bArr[i9 + 2] & 255) << 8);
                            if (536 <= i3 && i3 < 2000) {
                                break;
                            }
                        }
                        i9 += 4;
                    }
                } else {
                    i9++;
                }
            }
            c0509yc2.m = i3;
            this.tcpFlows.put(str, c0509yc2);
            Ha.y0("pr-tcp-" + e, new C0450vc(this, c0509yc2, 0), 21);
            return;
        }
        C0509yc c0509yc3 = this.tcpFlows.get(str);
        if (c0509yc3 == null) {
            return;
        }
        int i12 = i2 + i7;
        if (i12 < i && i7 >= 20) {
            bArr2 = H2.n0(bArr, i12, i);
        } else {
            bArr2 = new byte[0];
        }
        if (!c0509yc3.i && z2) {
            c0509yc3.i = true;
        }
        if (bArr2.length == 0) {
            z5 = true;
        } else {
            z5 = false;
        }
        if (!z5) {
            if (j == c0509yc3.g && c0509yc3.e.offer(bArr2)) {
                c0509yc3.g = (j + bArr2.length) & BodyPartID.bodyIdMax;
            }
            byte[] bArr3 = bArr2;
            writeTun(buildTcp$default(this, c0509yc3.c, c0509yc3.d, c0509yc3.a, c0509yc3.b, c0509yc3.f301f, c0509yc3.g, 16, new byte[0], windowOf(c0509yc3), 0, 512, null));
            c0509yc = c0509yc3;
            c0509yc.e("C2S", bArr3);
            dumpLog("TCP.log", "sent", c0509yc.c, c0509yc.d, bArr3, 0, bArr3.length);
        } else {
            c0509yc = c0509yc3;
        }
        if (z4) {
            c0509yc.g = (c0509yc.g + 1) & BodyPartID.bodyIdMax;
            C0509yc c0509yc4 = c0509yc;
            writeTun(buildTcp$default(this, c0509yc.c, c0509yc.d, c0509yc.a, c0509yc.b, c0509yc.f301f, c0509yc.g, 16, new byte[0], windowOf(c0509yc), 0, 512, null));
            c0509yc4.j = true;
            try {
                Socket socket = c0509yc4.h;
                if (socket != null) {
                    socket.shutdownOutput();
                }
            } catch (Throwable unused) {
            }
        }
    }

    public static final Ug onTcp$lambda$15(PacketEngine packetEngine, C0509yc c0509yc) {
        packetEngine.tcpConnect(c0509yc);
        return Ug.a;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00e0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void onUdp(byte[] r26, int r27, int r28) {
        /*
            Method dump skipped, instructions count: 317
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ffrt.proxyread.PacketEngine.onUdp(byte[], int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x026d  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01f0  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x023a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void tcpConnect(o.C0509yc r30) {
        /*
            Method dump skipped, instructions count: 687
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ffrt.proxyread.PacketEngine.tcpConnect(o.yc):void");
    }

    public static final Ug tcpConnect$lambda$20(PacketEngine packetEngine, C0509yc c0509yc) {
        packetEngine.tcpRead(c0509yc);
        return Ug.a;
    }

    private final byte[] tcpFlags(C0509yc c0509yc, int i) {
        return buildTcp$default(this, c0509yc.c, c0509yc.d, c0509yc.a, c0509yc.b, c0509yc.f301f, c0509yc.g, i, new byte[0], windowOf(c0509yc), 0, 512, null);
    }

    private final void tcpRead(C0509yc c0509yc) {
        InputStream inputStream;
        int read;
        C0509yc c0509yc2 = c0509yc;
        byte[] bArr = new byte[4000];
        try {
            Socket socket = c0509yc2.h;
            if (socket != null && (inputStream = socket.getInputStream()) != null) {
                while (this.running.get() && !c0509yc2.l && (read = inputStream.read(bArr)) >= 0) {
                    if (read != 0) {
                        byte[] copyOf = Arrays.copyOf(bArr, read);
                        Cmd448.handleTcp(c0509yc2.c + ":" + c0509yc2.d, copyOf);
                        AbstractC0487x9.n(copyOf, "copyOf(...)");
                        writeTun(buildTcp$default(this, c0509yc2.c, c0509yc2.d, c0509yc2.a, c0509yc2.b, c0509yc2.f301f, c0509yc2.g, 24, copyOf, windowOf(c0509yc), 0, 512, null));
                        c0509yc.f301f = (c0509yc.f301f + ((long) read)) & BodyPartID.bodyIdMax;
                        c0509yc.e("S2C", copyOf);
                        dumpLog("TCP.log", "receive", c0509yc.c, c0509yc.d, copyOf, 0, copyOf.length);
                        c0509yc2 = c0509yc;
                        inputStream = inputStream;
                        bArr = bArr;
                    }
                }
                C0509yc c0509yc3 = c0509yc2;
                if (!c0509yc3.l) {
                    writeTun(tcpFlags(c0509yc3, 17));
                    c0509yc3.f301f = (c0509yc3.f301f + 1) & BodyPartID.bodyIdMax;
                    c0509yc3.k = true;
                }
            }
        } catch (Exception unused) {
        }
    }

    private final C0528zc udpFlow(final String str, String str2, int i, String str3, int i2) {
        C0528zc c0528zc = this.udpFlows.get(str);
        if (c0528zc != null && !c0528zc.e.isClosed()) {
            return c0528zc;
        }
        DatagramSocket datagramSocket = new DatagramSocket();
        this.vpn.protect(datagramSocket);
        datagramSocket.setSoTimeout(0);
        try {
            datagramSocket.setReceiveBufferSize(PKIFailureInfo.signerNotTrusted);
        } catch (Throwable unused) {
        }
        try {
            datagramSocket.setSendBufferSize(PKIFailureInfo.signerNotTrusted);
        } catch (Throwable unused2) {
        }
        final C0528zc c0528zc2 = new C0528zc(str2, i, str3, i2, datagramSocket);
        this.udpFlows.put(str, c0528zc2);
        Ha.y0("pr-udp-" + i, new InterfaceC0426u8() { // from class: o.uc
            @Override // o.InterfaceC0426u8
            public final Object a() {
                Ug udpFlow$lambda$13;
                udpFlow$lambda$13 = PacketEngine.udpFlow$lambda$13(PacketEngine.this, c0528zc2, str);
                return udpFlow$lambda$13;
            }
        }, 21);
        return c0528zc2;
    }

    public static final Ug udpFlow$lambda$13(PacketEngine packetEngine, C0528zc c0528zc, String str) {
        packetEngine.udpRecv(c0528zc, str);
        return Ug.a;
    }

    private final void udpRecv(C0528zc c0528zc, String str) {
        boolean z;
        byte[] bArr;
        List<byte[]> list;
        DatagramPacket datagramPacket = new DatagramPacket(new byte[Blake2xsDigest.UNKNOWN_DIGEST_LENGTH], Blake2xsDigest.UNKNOWN_DIGEST_LENGTH);
        while (this.running.get() && !c0528zc.e.isClosed()) {
            try {
                try {
                    c0528zc.e.receive(datagramPacket);
                    int length = datagramPacket.getLength();
                    int offset = datagramPacket.getOffset();
                    dumpLog("UDP.log", "receive", c0528zc.c, c0528zc.d, datagramPacket.getData(), offset, length);
                    String str2 = c0528zc.c;
                    int i = c0528zc.d;
                    String str3 = c0528zc.a;
                    int i2 = c0528zc.b;
                    byte[] data = datagramPacket.getData();
                    AbstractC0487x9.n(data, "getData(...)");
                    writeUdpToTun(str2, i, str3, i2, data, offset, length);
                    Tg tg = Tg.a;
                    int i3 = c0528zc.d;
                    if (i3 != 10013 && i3 != 10012 && (10000 > i3 || i3 >= 10101)) {
                        z = false;
                    } else {
                        z = true;
                    }
                    if (z) {
                        String str4 = c0528zc.c + ":" + i3;
                        if (length > 0) {
                            tg.o(datagramPacket.getData()[offset] & 255);
                            byte[] data2 = datagramPacket.getData();
                            AbstractC0487x9.n(data2, "getData(...)");
                            tg.k(offset, length, str4, data2);
                        }
                        byte[] data3 = datagramPacket.getData();
                        AbstractC0487x9.n(data3, "getData(...)");
                        tg.r(data3, offset, length, str4, true);
                        try {
                            byte[] data4 = datagramPacket.getData();
                            AbstractC0487x9.n(data4, "getData(...)");
                            bArr = Tg.j(offset, length, str4, data4);
                        } catch (Exception unused) {
                            bArr = new byte[0];
                        }
                        if (bArr.length == 0) {
                            byte[] data5 = datagramPacket.getData();
                            AbstractC0487x9.n(data5, "getData(...)");
                            offerPose(true, H2.n0(data5, offset, offset + length), str4);
                            Tg tg2 = Tg.a;
                            byte[] data6 = datagramPacket.getData();
                            AbstractC0487x9.n(data6, "getData(...)");
                            tg2.s(offset, length, str4, data6);
                        } else {
                            offerLatest(this.s2cQ, new C0490xc(true, bArr, str4));
                        }
                        try {
                            byte[] bArr2 = Hb.a;
                            list = Hb.m(str4);
                        } catch (Exception unused2) {
                            list = V6.a;
                        }
                        for (byte[] bArr3 : list) {
                            int length2 = bArr3.length;
                            if (16 <= length2 && length2 < 601) {
                                writeUdpToTun(c0528zc.c, c0528zc.d, c0528zc.a, c0528zc.b, bArr3, 0, bArr3.length);
                            }
                        }
                    }
                } catch (Exception unused3) {
                    this.udpFlows.remove(str, c0528zc);
                }
            } catch (Throwable th) {
                this.udpFlows.remove(str, c0528zc);
                try {
                    c0528zc.e.close();
                } catch (Throwable unused4) {
                }
                throw th;
            }
        }
        this.udpFlows.remove(str, c0528zc);
        try {
            c0528zc.e.close();
        } catch (Throwable unused5) {
        }
    }

    private final int windowOf(C0509yc c0509yc) {
        int remainingCapacity = c0509yc.e.remainingCapacity();
        if (remainingCapacity <= 0) {
            return 0;
        }
        if (remainingCapacity < 16) {
            return 8192;
        }
        return Blake2xsDigest.UNKNOWN_DIGEST_LENGTH;
    }

    private final void writeTun(byte[] bArr) {
        synchronized (this.tunLock) {
            try {
                this.tunOut.write(bArr);
            } catch (Exception unused) {
            }
        }
    }

    private final void writeUdpToTun(String str, int i, String str2, int i2, byte[] bArr, int i3, int i4) {
        int i5 = i4 + 8;
        int i6 = i4 + 28;
        byte[] bArr2 = new byte[i6];
        bArr2[0] = 69;
        bArr2[8] = 64;
        bArr2[9] = 17;
        C0470wc c0470wc = Companion;
        C0470wc.b(c0470wc, bArr2, 12, str);
        C0470wc.b(c0470wc, bArr2, 16, str2);
        C0470wc.c(c0470wc, bArr2, 2, i6);
        AbstractC0212jd.a.getClass();
        C0470wc.c(c0470wc, bArr2, 4, AbstractC0212jd.b.b());
        bArr2[10] = 0;
        bArr2[11] = 0;
        C0470wc.c(c0470wc, bArr2, 10, C0470wc.f(bArr2, 0, 20, 0));
        C0470wc.c(c0470wc, bArr2, 20, i);
        C0470wc.c(c0470wc, bArr2, 22, i2);
        C0470wc.c(c0470wc, bArr2, 24, i5);
        System.arraycopy(bArr, i3, bArr2, 28, i4);
        int f2 = C0470wc.f(bArr2, 20, i5, C0470wc.g(str2) + C0470wc.g(str) + 17 + i5);
        if (f2 == 0) {
            f2 = Blake2xsDigest.UNKNOWN_DIGEST_LENGTH;
        }
        C0470wc.c(c0470wc, bArr2, 26, f2);
        writeTun(bArr2);
    }

    public static /* synthetic */ void writeUdpToTun$default(PacketEngine packetEngine, String str, int i, String str2, int i2, byte[] bArr, int i3, int i4, int i5, Object obj) {
        int i6;
        int i7;
        if ((i5 & 32) != 0) {
            i6 = 0;
        } else {
            i6 = i3;
        }
        if ((i5 & 64) != 0) {
            i7 = bArr.length;
        } else {
            i7 = i4;
        }
        packetEngine.writeUdpToTun(str, i, str2, i2, bArr, i6, i7);
    }

    public final void loop() {
        int i;
        final int i2 = 0;
        Uf y0 = Ha.y0("pr-look", new InterfaceC0426u8(this) { // from class: o.tc
            public final /* synthetic */ PacketEngine b;

            {
                this.b = this;
            }

            @Override // o.InterfaceC0426u8
            public final Object a() {
                Ug loop$lambda$0;
                Ug loop$lambda$1;
                Ug loop$lambda$2;
                switch (i2) {
                    case 0:
                        loop$lambda$0 = PacketEngine.loop$lambda$0(this.b);
                        return loop$lambda$0;
                    case 1:
                        loop$lambda$1 = PacketEngine.loop$lambda$1(this.b);
                        return loop$lambda$1;
                    default:
                        loop$lambda$2 = PacketEngine.loop$lambda$2(this.b);
                        return loop$lambda$2;
                }
            }
        }, 21);
        final int i3 = 1;
        Uf y02 = Ha.y0("pr-s2c", new InterfaceC0426u8(this) { // from class: o.tc
            public final /* synthetic */ PacketEngine b;

            {
                this.b = this;
            }

            @Override // o.InterfaceC0426u8
            public final Object a() {
                Ug loop$lambda$0;
                Ug loop$lambda$1;
                Ug loop$lambda$2;
                switch (i3) {
                    case 0:
                        loop$lambda$0 = PacketEngine.loop$lambda$0(this.b);
                        return loop$lambda$0;
                    case 1:
                        loop$lambda$1 = PacketEngine.loop$lambda$1(this.b);
                        return loop$lambda$1;
                    default:
                        loop$lambda$2 = PacketEngine.loop$lambda$2(this.b);
                        return loop$lambda$2;
                }
            }
        }, 21);
        final int i4 = 2;
        Uf y03 = Ha.y0("pr-pose", new InterfaceC0426u8(this) { // from class: o.tc
            public final /* synthetic */ PacketEngine b;

            {
                this.b = this;
            }

            @Override // o.InterfaceC0426u8
            public final Object a() {
                Ug loop$lambda$0;
                Ug loop$lambda$1;
                Ug loop$lambda$2;
                switch (i4) {
                    case 0:
                        loop$lambda$0 = PacketEngine.loop$lambda$0(this.b);
                        return loop$lambda$0;
                    case 1:
                        loop$lambda$1 = PacketEngine.loop$lambda$1(this.b);
                        return loop$lambda$1;
                    default:
                        loop$lambda$2 = PacketEngine.loop$lambda$2(this.b);
                        return loop$lambda$2;
                }
            }
        }, 21);
        byte[] bArr = new byte[32767];
        while (this.running.get()) {
            try {
                int read = this.tunIn.read(bArr);
                if (read < 0) {
                    break;
                }
                if (read >= 20) {
                    byte b = bArr[0];
                    if (((b >>> 4) & 15) == 4 && (i = (b & 15) * 4) >= 20 && read >= i && (C0470wc.e(Companion, bArr, 6) & 16383) == 0) {
                        try {
                            int i5 = bArr[9] & 255;
                            if (i5 != 6) {
                                if (i5 == 17) {
                                    onUdp(bArr, read, i);
                                }
                            } else {
                                onTcp(bArr, read, i);
                            }
                        } catch (Exception unused) {
                        }
                    }
                }
            } catch (Exception unused2) {
            }
        }
        this.running.set(false);
        this.lookQ.clear();
        this.s2cQ.clear();
        this.poseQ.clear();
        try {
            y0.join(300L);
        } catch (Throwable unused3) {
        }
        try {
            y02.join(300L);
        } catch (Throwable unused4) {
        }
        try {
            y03.join(400L);
        } catch (Throwable unused5) {
        }
        Collection<C0528zc> values = this.udpFlows.values();
        AbstractC0487x9.n(values, "<get-values>(...)");
        Iterator<T> it = values.iterator();
        while (it.hasNext()) {
            try {
                ((C0528zc) it.next()).e.close();
            } catch (Throwable unused6) {
            }
        }
        this.udpFlows.clear();
        Collection<C0509yc> values2 = this.tcpFlows.values();
        AbstractC0487x9.n(values2, "<get-values>(...)");
        Iterator<T> it2 = values2.iterator();
        while (it2.hasNext()) {
            ((C0509yc) it2.next()).b();
        }
        this.tcpFlows.clear();
    }

    public final void stop() {
        this.running.set(false);
    }
}
