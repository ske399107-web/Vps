package org.bouncycastle.crypto.engines;

import java.io.ByteArrayOutputStream;
import o.AbstractC0214jf;
import o.Ve;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.constraints.DefaultServiceProperties;
import org.bouncycastle.crypto.modes.AEADCipher;
import org.bouncycastle.crypto.params.AEADParameters;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.util.Arrays;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public abstract class AEADBaseEngine implements AEADCipher {
    protected int AADBufferSize;
    protected int BlockSize;
    protected int IV_SIZE;
    protected int KEY_SIZE;
    protected int MAC_SIZE;
    protected AADOperator aadOperator;
    protected String algorithmName;
    protected DataOperator dataOperator;
    protected boolean forEncryption;
    protected byte[] initialAssociatedText;
    protected byte[] m_aad;
    protected int m_aadPos;
    protected byte[] m_buf;
    protected int m_bufPos;
    protected int m_bufferSizeDecrypt;
    protected State m_state = State.Uninitialized;
    protected byte[] mac;
    protected AADProcessingBuffer processor;

    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
    public interface AADOperator {
        int getLen();

        void processAADByte(byte b);

        void processAADBytes(byte[] bArr, int i, int i2);

        void reset();
    }

    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
    public static class AADOperatorType {
        public static final int COUNTER = 1;
        public static final int DEFAULT = 0;
        public static final int STREAM = 2;
        private final int ord;
        public static final AADOperatorType Default = new AADOperatorType(0);
        public static final AADOperatorType Counter = new AADOperatorType(1);
        public static final AADOperatorType Stream = new AADOperatorType(2);

        public AADOperatorType(int i) {
            this.ord = i;
        }
    }

    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
    public interface AADProcessingBuffer {
        int getUpdateOutputSize(int i);

        boolean isLengthExceedingBlockSize(int i, int i2);

        boolean isLengthWithinAvailableSpace(int i, int i2);

        void processAADByte(byte b);

        int processByte(byte b, byte[] bArr, int i);
    }

    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
    public class BufferedAADProcessor implements AADProcessingBuffer {
        private BufferedAADProcessor() {
        }

        @Override // org.bouncycastle.crypto.engines.AEADBaseEngine.AADProcessingBuffer
        public int getUpdateOutputSize(int i) {
            return Math.max(0, i) - 1;
        }

        @Override // org.bouncycastle.crypto.engines.AEADBaseEngine.AADProcessingBuffer
        public boolean isLengthExceedingBlockSize(int i, int i2) {
            return i > i2;
        }

        @Override // org.bouncycastle.crypto.engines.AEADBaseEngine.AADProcessingBuffer
        public boolean isLengthWithinAvailableSpace(int i, int i2) {
            return i <= i2;
        }

        @Override // org.bouncycastle.crypto.engines.AEADBaseEngine.AADProcessingBuffer
        public void processAADByte(byte b) {
            AEADBaseEngine aEADBaseEngine = AEADBaseEngine.this;
            if (aEADBaseEngine.m_aadPos == aEADBaseEngine.AADBufferSize) {
                aEADBaseEngine.processBufferAAD(aEADBaseEngine.m_aad, 0);
                AEADBaseEngine.this.m_aadPos = 0;
            }
            AEADBaseEngine aEADBaseEngine2 = AEADBaseEngine.this;
            byte[] bArr = aEADBaseEngine2.m_aad;
            int i = aEADBaseEngine2.m_aadPos;
            aEADBaseEngine2.m_aadPos = i + 1;
            bArr[i] = b;
        }

        @Override // org.bouncycastle.crypto.engines.AEADBaseEngine.AADProcessingBuffer
        public int processByte(byte b, byte[] bArr, int i) {
            AEADBaseEngine.this.checkData(false);
            int processEncDecByte = AEADBaseEngine.this.processEncDecByte(bArr, i);
            AEADBaseEngine aEADBaseEngine = AEADBaseEngine.this;
            byte[] bArr2 = aEADBaseEngine.m_buf;
            int i2 = aEADBaseEngine.m_bufPos;
            aEADBaseEngine.m_bufPos = i2 + 1;
            bArr2[i2] = b;
            return processEncDecByte;
        }
    }

    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
    public class CounterAADOperator implements AADOperator {
        private int aadLen;

        private CounterAADOperator() {
        }

        @Override // org.bouncycastle.crypto.engines.AEADBaseEngine.AADOperator
        public int getLen() {
            return this.aadLen;
        }

        @Override // org.bouncycastle.crypto.engines.AEADBaseEngine.AADOperator
        public void processAADByte(byte b) {
            this.aadLen++;
            AEADBaseEngine.this.processor.processAADByte(b);
        }

        @Override // org.bouncycastle.crypto.engines.AEADBaseEngine.AADOperator
        public void processAADBytes(byte[] bArr, int i, int i2) {
            this.aadLen += i2;
            AEADBaseEngine.this.processAadBytes(bArr, i, i2);
        }

        @Override // org.bouncycastle.crypto.engines.AEADBaseEngine.AADOperator
        public void reset() {
            this.aadLen = 0;
        }
    }

    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
    public class CounterDataOperator implements DataOperator {
        private int messegeLen;

        private CounterDataOperator() {
        }

        @Override // org.bouncycastle.crypto.engines.AEADBaseEngine.DataOperator
        public int getLen() {
            return this.messegeLen;
        }

        @Override // org.bouncycastle.crypto.engines.AEADBaseEngine.DataOperator
        public int processByte(byte b, byte[] bArr, int i) {
            this.messegeLen++;
            return AEADBaseEngine.this.processor.processByte(b, bArr, i);
        }

        @Override // org.bouncycastle.crypto.engines.AEADBaseEngine.DataOperator
        public int processBytes(byte[] bArr, int i, int i2, byte[] bArr2, int i3) {
            this.messegeLen += i2;
            return AEADBaseEngine.this.processEncDecBytes(bArr, i, i2, bArr2, i3);
        }

        @Override // org.bouncycastle.crypto.engines.AEADBaseEngine.DataOperator
        public void reset() {
            this.messegeLen = 0;
        }
    }

    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
    public interface DataOperator {
        int getLen();

        int processByte(byte b, byte[] bArr, int i);

        int processBytes(byte[] bArr, int i, int i2, byte[] bArr2, int i3);

        void reset();
    }

    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
    public static class DataOperatorType {
        public static final int COUNTER = 1;
        public static final int DEFAULT = 0;
        public static final int STREAM = 2;
        public static final int STREAM_CIPHER = 3;
        private final int ord;
        public static final DataOperatorType Default = new DataOperatorType(0);
        public static final DataOperatorType Counter = new DataOperatorType(1);
        public static final DataOperatorType Stream = new DataOperatorType(2);
        public static final DataOperatorType StreamCipher = new DataOperatorType(3);

        public DataOperatorType(int i) {
            this.ord = i;
        }
    }

    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
    public class DefaultAADOperator implements AADOperator {
        private DefaultAADOperator() {
        }

        @Override // org.bouncycastle.crypto.engines.AEADBaseEngine.AADOperator
        public int getLen() {
            return AEADBaseEngine.this.m_aadPos;
        }

        @Override // org.bouncycastle.crypto.engines.AEADBaseEngine.AADOperator
        public void processAADByte(byte b) {
            AEADBaseEngine.this.processor.processAADByte(b);
        }

        @Override // org.bouncycastle.crypto.engines.AEADBaseEngine.AADOperator
        public void processAADBytes(byte[] bArr, int i, int i2) {
            AEADBaseEngine.this.processAadBytes(bArr, i, i2);
        }

        @Override // org.bouncycastle.crypto.engines.AEADBaseEngine.AADOperator
        public void reset() {
        }
    }

    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
    public class DefaultDataOperator implements DataOperator {
        private DefaultDataOperator() {
        }

        @Override // org.bouncycastle.crypto.engines.AEADBaseEngine.DataOperator
        public int getLen() {
            return AEADBaseEngine.this.m_bufPos;
        }

        @Override // org.bouncycastle.crypto.engines.AEADBaseEngine.DataOperator
        public int processByte(byte b, byte[] bArr, int i) {
            return AEADBaseEngine.this.processor.processByte(b, bArr, i);
        }

        @Override // org.bouncycastle.crypto.engines.AEADBaseEngine.DataOperator
        public int processBytes(byte[] bArr, int i, int i2, byte[] bArr2, int i3) {
            return AEADBaseEngine.this.processEncDecBytes(bArr, i, i2, bArr2, i3);
        }

        @Override // org.bouncycastle.crypto.engines.AEADBaseEngine.DataOperator
        public void reset() {
        }
    }

    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
    public static final class ErasableOutputStream extends ByteArrayOutputStream {
        public byte[] getBuf() {
            return ((ByteArrayOutputStream) this).buf;
        }
    }

    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
    public class ImmediateAADProcessor implements AADProcessingBuffer {
        private ImmediateAADProcessor() {
        }

        @Override // org.bouncycastle.crypto.engines.AEADBaseEngine.AADProcessingBuffer
        public int getUpdateOutputSize(int i) {
            return Math.max(0, i);
        }

        @Override // org.bouncycastle.crypto.engines.AEADBaseEngine.AADProcessingBuffer
        public boolean isLengthExceedingBlockSize(int i, int i2) {
            return i >= i2;
        }

        @Override // org.bouncycastle.crypto.engines.AEADBaseEngine.AADProcessingBuffer
        public boolean isLengthWithinAvailableSpace(int i, int i2) {
            return i < i2;
        }

        @Override // org.bouncycastle.crypto.engines.AEADBaseEngine.AADProcessingBuffer
        public void processAADByte(byte b) {
            AEADBaseEngine aEADBaseEngine = AEADBaseEngine.this;
            byte[] bArr = aEADBaseEngine.m_aad;
            int i = aEADBaseEngine.m_aadPos;
            int i2 = i + 1;
            aEADBaseEngine.m_aadPos = i2;
            bArr[i] = b;
            if (i2 == aEADBaseEngine.AADBufferSize) {
                aEADBaseEngine.processBufferAAD(bArr, 0);
                AEADBaseEngine.this.m_aadPos = 0;
            }
        }

        @Override // org.bouncycastle.crypto.engines.AEADBaseEngine.AADProcessingBuffer
        public int processByte(byte b, byte[] bArr, int i) {
            AEADBaseEngine.this.checkData(false);
            AEADBaseEngine aEADBaseEngine = AEADBaseEngine.this;
            byte[] bArr2 = aEADBaseEngine.m_buf;
            int i2 = aEADBaseEngine.m_bufPos;
            aEADBaseEngine.m_bufPos = i2 + 1;
            bArr2[i2] = b;
            return aEADBaseEngine.processEncDecByte(bArr, i);
        }
    }

    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
    public static class ProcessingBufferType {
        public static final int BUFFERED = 0;
        public static final int IMMEDIATE = 1;
        private final int ord;
        public static final ProcessingBufferType Buffered = new ProcessingBufferType(0);
        public static final ProcessingBufferType Immediate = new ProcessingBufferType(1);

        public ProcessingBufferType(int i) {
            this.ord = i;
        }
    }

    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
    public static class State {
        public static final int DEC_AAD = 6;
        public static final int DEC_DATA = 7;
        public static final int DEC_FINAL = 8;
        public static final int DEC_INIT = 5;
        public static final int ENC_AAD = 2;
        public static final int ENC_DATA = 3;
        public static final int ENC_FINAL = 4;
        public static final int ENC_INIT = 1;
        public static final int UNINITIALIZED = 0;
        final int ord;
        public static final State Uninitialized = new State(0);
        public static final State EncInit = new State(1);
        public static final State EncAad = new State(2);
        public static final State EncData = new State(3);
        public static final State EncFinal = new State(4);
        public static final State DecInit = new State(5);
        public static final State DecAad = new State(6);
        public static final State DecData = new State(7);
        public static final State DecFinal = new State(8);

        public State(int i) {
            this.ord = i;
        }
    }

    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
    public static class StreamAADOperator implements AADOperator {
        private final ErasableOutputStream stream = new ErasableOutputStream();

        public byte[] getBytes() {
            return this.stream.getBuf();
        }

        @Override // org.bouncycastle.crypto.engines.AEADBaseEngine.AADOperator
        public int getLen() {
            return this.stream.size();
        }

        @Override // org.bouncycastle.crypto.engines.AEADBaseEngine.AADOperator
        public void processAADByte(byte b) {
            this.stream.write(b);
        }

        @Override // org.bouncycastle.crypto.engines.AEADBaseEngine.AADOperator
        public void processAADBytes(byte[] bArr, int i, int i2) {
            this.stream.write(bArr, i, i2);
        }

        @Override // org.bouncycastle.crypto.engines.AEADBaseEngine.AADOperator
        public void reset() {
            this.stream.reset();
        }
    }

    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
    public class StreamCipherOperator implements DataOperator {
        private int len;

        private StreamCipherOperator() {
        }

        @Override // org.bouncycastle.crypto.engines.AEADBaseEngine.DataOperator
        public int getLen() {
            return this.len;
        }

        @Override // org.bouncycastle.crypto.engines.AEADBaseEngine.DataOperator
        public int processByte(byte b, byte[] bArr, int i) {
            if (AEADBaseEngine.this.checkData(false)) {
                this.len = 1;
                AEADBaseEngine.this.processBufferEncrypt(new byte[]{b}, 0, bArr, i);
                return 1;
            }
            AEADBaseEngine aEADBaseEngine = AEADBaseEngine.this;
            int i2 = aEADBaseEngine.m_bufPos;
            if (i2 != aEADBaseEngine.MAC_SIZE) {
                byte[] bArr2 = aEADBaseEngine.m_buf;
                aEADBaseEngine.m_bufPos = 1 + i2;
                bArr2[i2] = b;
                return 0;
            }
            this.len = 1;
            aEADBaseEngine.processBufferDecrypt(aEADBaseEngine.m_buf, 0, bArr, i);
            AEADBaseEngine aEADBaseEngine2 = AEADBaseEngine.this;
            byte[] bArr3 = aEADBaseEngine2.m_buf;
            System.arraycopy(bArr3, 1, bArr3, 0, aEADBaseEngine2.m_bufPos - 1);
            AEADBaseEngine aEADBaseEngine3 = AEADBaseEngine.this;
            aEADBaseEngine3.m_buf[aEADBaseEngine3.m_bufPos - 1] = b;
            return 1;
        }

        @Override // org.bouncycastle.crypto.engines.AEADBaseEngine.DataOperator
        public int processBytes(byte[] bArr, int i, int i2, byte[] bArr2, int i3) {
            int i4 = 0;
            if (bArr == bArr2 && Arrays.segmentsOverlap(i, i2, i3, AEADBaseEngine.this.processor.getUpdateOutputSize(i2))) {
                bArr = new byte[i2];
                System.arraycopy(bArr2, i, bArr, 0, i2);
                i = 0;
            }
            if (AEADBaseEngine.this.checkData(false)) {
                this.len = i2;
                AEADBaseEngine.this.processBufferEncrypt(bArr, i, bArr2, i3);
                return i2;
            }
            AEADBaseEngine aEADBaseEngine = AEADBaseEngine.this;
            int max = Math.max((aEADBaseEngine.m_bufPos + i2) - aEADBaseEngine.MAC_SIZE, 0);
            int i5 = AEADBaseEngine.this.m_bufPos;
            if (i5 > 0) {
                int min = Math.min(max, i5);
                this.len = min;
                AEADBaseEngine aEADBaseEngine2 = AEADBaseEngine.this;
                aEADBaseEngine2.processBufferDecrypt(aEADBaseEngine2.m_buf, 0, bArr2, i3);
                max -= min;
                AEADBaseEngine aEADBaseEngine3 = AEADBaseEngine.this;
                int i6 = aEADBaseEngine3.m_bufPos - min;
                aEADBaseEngine3.m_bufPos = i6;
                byte[] bArr3 = aEADBaseEngine3.m_buf;
                System.arraycopy(bArr3, min, bArr3, 0, i6);
                i4 = min;
            }
            if (max > 0) {
                this.len = max;
                AEADBaseEngine.this.processBufferDecrypt(bArr, i, bArr2, i3);
                i4 += max;
                i2 -= max;
                i += max;
            }
            AEADBaseEngine aEADBaseEngine4 = AEADBaseEngine.this;
            System.arraycopy(bArr, i, aEADBaseEngine4.m_buf, aEADBaseEngine4.m_bufPos, i2);
            AEADBaseEngine.this.m_bufPos += i2;
            return i4;
        }

        @Override // org.bouncycastle.crypto.engines.AEADBaseEngine.DataOperator
        public void reset() {
        }
    }

    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
    public class StreamDataOperator implements DataOperator {
        private final ErasableOutputStream stream = new ErasableOutputStream();

        public StreamDataOperator() {
        }

        public byte[] getBytes() {
            return this.stream.getBuf();
        }

        @Override // org.bouncycastle.crypto.engines.AEADBaseEngine.DataOperator
        public int getLen() {
            return this.stream.size();
        }

        @Override // org.bouncycastle.crypto.engines.AEADBaseEngine.DataOperator
        public int processByte(byte b, byte[] bArr, int i) {
            AEADBaseEngine.this.ensureInitialized();
            this.stream.write(b);
            AEADBaseEngine.this.m_bufPos = this.stream.size();
            return 0;
        }

        @Override // org.bouncycastle.crypto.engines.AEADBaseEngine.DataOperator
        public int processBytes(byte[] bArr, int i, int i2, byte[] bArr2, int i3) {
            AEADBaseEngine.this.ensureInitialized();
            this.stream.write(bArr, i, i2);
            AEADBaseEngine.this.m_bufPos = this.stream.size();
            return 0;
        }

        @Override // org.bouncycastle.crypto.engines.AEADBaseEngine.DataOperator
        public void reset() {
            this.stream.reset();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processAadBytes(byte[] bArr, int i, int i2) {
        int i3 = this.m_aadPos;
        if (i3 > 0) {
            int i4 = this.AADBufferSize - i3;
            if (this.processor.isLengthWithinAvailableSpace(i2, i4)) {
                System.arraycopy(bArr, i, this.m_aad, this.m_aadPos, i2);
                this.m_aadPos += i2;
                return;
            } else {
                System.arraycopy(bArr, i, this.m_aad, this.m_aadPos, i4);
                i += i4;
                i2 -= i4;
                processBufferAAD(this.m_aad, 0);
            }
        }
        while (this.processor.isLengthExceedingBlockSize(i2, this.AADBufferSize)) {
            processBufferAAD(bArr, i);
            int i5 = this.AADBufferSize;
            i += i5;
            i2 -= i5;
        }
        System.arraycopy(bArr, i, this.m_aad, 0, i2);
        this.m_aadPos = i2;
    }

    public void checkAAD() {
        State state;
        int i = this.m_state.ord;
        if (i != 1) {
            if (i != 2) {
                if (i != 4) {
                    if (i != 5) {
                        if (i != 6) {
                            throw new IllegalStateException(Ve.k(new StringBuilder(), getAlgorithmName(), " needs to be initialized"));
                        }
                        return;
                    }
                    state = State.DecAad;
                } else {
                    throw new IllegalStateException(Ve.k(new StringBuilder(), getAlgorithmName(), " cannot be reused for encryption"));
                }
            } else {
                return;
            }
        } else {
            state = State.EncAad;
        }
        this.m_state = state;
    }

    public boolean checkData(boolean z) {
        switch (this.m_state.ord) {
            case 1:
            case 2:
                finishAAD(State.EncData, z);
                return true;
            case 3:
                return true;
            case 4:
                throw new IllegalStateException(Ve.k(new StringBuilder(), getAlgorithmName(), " cannot be reused for encryption"));
            case 5:
            case 6:
                finishAAD(State.DecData, z);
                return false;
            case 7:
                return false;
            default:
                throw new IllegalStateException(Ve.k(new StringBuilder(), getAlgorithmName(), " needs to be initialized"));
        }
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int doFinal(byte[] bArr, int i) throws IllegalStateException, InvalidCipherTextException {
        int i2;
        boolean checkData = checkData(true);
        int i3 = this.m_bufPos;
        int i4 = this.MAC_SIZE;
        if (checkData) {
            i2 = i3 + i4;
        } else if (i3 >= i4) {
            i2 = i3 - i4;
            this.m_bufPos = i2;
        } else {
            throw new InvalidCipherTextException("data too short");
        }
        ensureSufficientOutputBuffer(bArr, i, i2);
        this.mac = new byte[this.MAC_SIZE];
        processFinalBlock(bArr, i);
        if (checkData) {
            byte[] bArr2 = this.mac;
            int i5 = this.MAC_SIZE;
            System.arraycopy(bArr2, 0, bArr, (i + i2) - i5, i5);
        } else if (!Arrays.constantTimeAreEqual(this.MAC_SIZE, this.mac, 0, this.m_buf, this.m_bufPos)) {
            throw new InvalidCipherTextException(Ve.k(new StringBuilder(), this.algorithmName, " mac does not match"));
        }
        reset(!checkData);
        return i2;
    }

    public final void ensureInitialized() {
        if (this.m_state == State.Uninitialized) {
            throw new IllegalStateException("Need to call init function before operation");
        }
    }

    public final void ensureSufficientInputBuffer(byte[] bArr, int i, int i2) {
        if (i + i2 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
    }

    public final void ensureSufficientOutputBuffer(byte[] bArr, int i, int i2) {
        if (i + i2 > bArr.length) {
            throw new OutputLengthException("output buffer too short");
        }
    }

    public abstract void finishAAD(State state, boolean z);

    public void finishAAD1(State state) {
        int i = this.m_state.ord;
        if (i == 1 || i == 2 || i == 5 || i == 6) {
            processFinalAAD();
        }
        this.m_state = state;
    }

    public void finishAAD2(State state) {
        int i = this.m_state.ord;
        if (i == 2 || i == 6) {
            processFinalAAD();
        }
        this.m_aadPos = 0;
        this.m_state = state;
    }

    public void finishAAD3(State state, boolean z) {
        int i = this.m_state.ord;
        if (i != 1 && i != 2) {
            if (i == 5 || i == 6) {
                if (!z && this.dataOperator.getLen() <= this.MAC_SIZE) {
                    return;
                }
            }
            this.m_aadPos = 0;
            this.m_state = state;
        }
        processFinalAAD();
        this.m_aadPos = 0;
        this.m_state = state;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public String getAlgorithmName() {
        return this.algorithmName;
    }

    public final int getBlockSize() {
        return this.BlockSize;
    }

    public int getIVBytesSize() {
        return this.IV_SIZE;
    }

    public int getKeyBytesSize() {
        return this.KEY_SIZE;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public byte[] getMac() {
        return this.mac;
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int getOutputSize(int i) {
        int max = Math.max(0, i);
        switch (this.m_state.ord) {
            case 3:
            case 4:
                return max + this.m_bufPos + this.MAC_SIZE;
            case 5:
            case 6:
            case 7:
            case 8:
                return Math.max(0, (max + this.m_bufPos) - this.MAC_SIZE);
            default:
                return max + this.MAC_SIZE;
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x000b. Please report as an issue. */
    public int getTotalBytesForUpdate(int i) {
        int i2;
        int updateOutputSize = this.processor.getUpdateOutputSize(i);
        switch (this.m_state.ord) {
            case 3:
            case 4:
                i2 = updateOutputSize + this.m_bufPos;
                return Math.max(0, i2);
            case 5:
            case 6:
            case 7:
            case 8:
                i2 = (updateOutputSize + this.m_bufPos) - this.MAC_SIZE;
                return Math.max(0, i2);
            default:
                return updateOutputSize;
        }
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int getUpdateOutputSize(int i) {
        int totalBytesForUpdate = getTotalBytesForUpdate(i);
        return totalBytesForUpdate - (totalBytesForUpdate % this.BlockSize);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void init(boolean z, CipherParameters cipherParameters) {
        KeyParameter keyParameter;
        byte[] iv;
        this.forEncryption = z;
        if (cipherParameters instanceof AEADParameters) {
            AEADParameters aEADParameters = (AEADParameters) cipherParameters;
            keyParameter = aEADParameters.getKey();
            iv = aEADParameters.getNonce();
            this.initialAssociatedText = aEADParameters.getAssociatedText();
            int macSize = aEADParameters.getMacSize();
            if (macSize != this.MAC_SIZE * 8) {
                throw new IllegalArgumentException(AbstractC0214jf.a(macSize, "Invalid value for MAC size: "));
            }
        } else {
            if (!(cipherParameters instanceof ParametersWithIV)) {
                throw new IllegalArgumentException("invalid parameters passed to " + this.algorithmName);
            }
            ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
            keyParameter = (KeyParameter) parametersWithIV.getParameters();
            iv = parametersWithIV.getIV();
            this.initialAssociatedText = null;
        }
        if (keyParameter == null) {
            throw new IllegalArgumentException(Ve.k(new StringBuilder(), this.algorithmName, " Init parameters must include a key"));
        }
        if (iv == null || iv.length != this.IV_SIZE) {
            StringBuilder sb = new StringBuilder();
            sb.append(this.algorithmName);
            sb.append(" requires exactly ");
            throw new IllegalArgumentException(Ve.j(sb, this.IV_SIZE, " bytes of IV"));
        }
        byte[] key = keyParameter.getKey();
        if (key.length != this.KEY_SIZE) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(this.algorithmName);
            sb2.append(" key must be ");
            throw new IllegalArgumentException(Ve.j(sb2, this.KEY_SIZE, " bytes long"));
        }
        CryptoServicesRegistrar.checkConstraints(new DefaultServiceProperties(getAlgorithmName(), 128, cipherParameters, Utils.getPurpose(z)));
        this.m_state = z ? State.EncInit : State.DecInit;
        init(key, iv);
        reset(true);
        byte[] bArr = this.initialAssociatedText;
        if (bArr != null) {
            processAADBytes(bArr, 0, bArr.length);
        }
    }

    public abstract void init(byte[] bArr, byte[] bArr2);

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void processAADByte(byte b) {
        checkAAD();
        this.aadOperator.processAADByte(b);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void processAADBytes(byte[] bArr, int i, int i2) {
        ensureSufficientInputBuffer(bArr, i, i2);
        if (i2 <= 0) {
            return;
        }
        checkAAD();
        this.aadOperator.processAADBytes(bArr, i, i2);
    }

    public abstract void processBufferAAD(byte[] bArr, int i);

    public abstract void processBufferDecrypt(byte[] bArr, int i, byte[] bArr2, int i2);

    public abstract void processBufferEncrypt(byte[] bArr, int i, byte[] bArr2, int i2);

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int processByte(byte b, byte[] bArr, int i) throws DataLengthException {
        return this.dataOperator.processByte(b, bArr, i);
    }

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public int processBytes(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws DataLengthException {
        ensureSufficientInputBuffer(bArr, i, i2);
        return this.dataOperator.processBytes(bArr, i, i2, bArr2, i3);
    }

    public int processEncDecByte(byte[] bArr, int i) {
        if ((this.forEncryption ? this.BlockSize : this.m_bufferSizeDecrypt) - this.m_bufPos != 0) {
            return 0;
        }
        ensureSufficientOutputBuffer(bArr, i, this.BlockSize);
        if (this.forEncryption) {
            processBufferEncrypt(this.m_buf, 0, bArr, i);
        } else {
            processBufferDecrypt(this.m_buf, 0, bArr, i);
            byte[] bArr2 = this.m_buf;
            int i2 = this.BlockSize;
            System.arraycopy(bArr2, i2, bArr2, 0, this.m_bufPos - i2);
        }
        int i3 = this.m_bufPos;
        int i4 = this.BlockSize;
        this.m_bufPos = i3 - i4;
        return i4;
    }

    public int processEncDecBytes(byte[] bArr, int i, int i2, byte[] bArr2, int i3) {
        int i4;
        boolean checkData = checkData(false);
        int i5 = (checkData ? this.BlockSize : this.m_bufferSizeDecrypt) - this.m_bufPos;
        if (this.processor.isLengthWithinAvailableSpace(i2, i5)) {
            System.arraycopy(bArr, i, this.m_buf, this.m_bufPos, i2);
            this.m_bufPos += i2;
            return 0;
        }
        int updateOutputSize = this.processor.getUpdateOutputSize(i2);
        int i6 = (this.m_bufPos + updateOutputSize) - (checkData ? 0 : this.MAC_SIZE);
        ensureSufficientOutputBuffer(bArr2, i3, i6 - (i6 % this.BlockSize));
        if (bArr == bArr2 && Arrays.segmentsOverlap(i, i2, i3, updateOutputSize)) {
            bArr = new byte[i2];
            System.arraycopy(bArr2, i, bArr, 0, i2);
            i = 0;
        }
        if (checkData) {
            int i7 = this.m_bufPos;
            if (i7 > 0) {
                System.arraycopy(bArr, i, this.m_buf, i7, i5);
                i += i5;
                i2 -= i5;
                processBufferEncrypt(this.m_buf, 0, bArr2, i3);
                i4 = this.BlockSize;
            } else {
                i4 = 0;
            }
            while (this.processor.isLengthExceedingBlockSize(i2, this.BlockSize)) {
                processBufferEncrypt(bArr, i, bArr2, i3 + i4);
                int i8 = this.BlockSize;
                i += i8;
                i2 -= i8;
                i4 += i8;
            }
        } else {
            i4 = 0;
            while (this.processor.isLengthExceedingBlockSize(this.m_bufPos, this.BlockSize) && this.processor.isLengthExceedingBlockSize(this.m_bufPos + i2, this.m_bufferSizeDecrypt)) {
                processBufferDecrypt(this.m_buf, i4, bArr2, i3 + i4);
                int i9 = this.m_bufPos;
                int i10 = this.BlockSize;
                this.m_bufPos = i9 - i10;
                i4 += i10;
            }
            int i11 = this.m_bufPos;
            if (i11 > 0) {
                byte[] bArr3 = this.m_buf;
                System.arraycopy(bArr3, i4, bArr3, 0, i11);
                if (this.processor.isLengthWithinAvailableSpace(this.m_bufPos + i2, this.m_bufferSizeDecrypt)) {
                    System.arraycopy(bArr, i, this.m_buf, this.m_bufPos, i2);
                    this.m_bufPos += i2;
                    return i4;
                }
                int max = Math.max(this.BlockSize - this.m_bufPos, 0);
                System.arraycopy(bArr, i, this.m_buf, this.m_bufPos, max);
                i += max;
                i2 -= max;
                processBufferDecrypt(this.m_buf, 0, bArr2, i3 + i4);
                i4 += this.BlockSize;
            }
            while (this.processor.isLengthExceedingBlockSize(i2, this.m_bufferSizeDecrypt)) {
                processBufferDecrypt(bArr, i, bArr2, i3 + i4);
                int i12 = this.BlockSize;
                i += i12;
                i2 -= i12;
                i4 += i12;
            }
        }
        System.arraycopy(bArr, i, this.m_buf, 0, i2);
        this.m_bufPos = i2;
        return i4;
    }

    public abstract void processFinalAAD();

    public abstract void processFinalBlock(byte[] bArr, int i);

    @Override // org.bouncycastle.crypto.modes.AEADCipher
    public void reset() {
        reset(true);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0028  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setInnerMembers(org.bouncycastle.crypto.engines.AEADBaseEngine.ProcessingBufferType r4, org.bouncycastle.crypto.engines.AEADBaseEngine.AADOperatorType r5, org.bouncycastle.crypto.engines.AEADBaseEngine.DataOperatorType r6) {
        /*
            r3 = this;
            int r4 = org.bouncycastle.crypto.engines.AEADBaseEngine.ProcessingBufferType.access$000(r4)
            r0 = 1
            r1 = 0
            if (r4 == 0) goto L13
            if (r4 == r0) goto Lb
            goto L19
        Lb:
            org.bouncycastle.crypto.engines.AEADBaseEngine$ImmediateAADProcessor r4 = new org.bouncycastle.crypto.engines.AEADBaseEngine$ImmediateAADProcessor
            r4.<init>()
        L10:
            r3.processor = r4
            goto L19
        L13:
            org.bouncycastle.crypto.engines.AEADBaseEngine$BufferedAADProcessor r4 = new org.bouncycastle.crypto.engines.AEADBaseEngine$BufferedAADProcessor
            r4.<init>()
            goto L10
        L19:
            int r4 = r3.BlockSize
            int r2 = r3.MAC_SIZE
            int r4 = r4 + r2
            r3.m_bufferSizeDecrypt = r4
            int r4 = org.bouncycastle.crypto.engines.AEADBaseEngine.AADOperatorType.access$300(r5)
            r5 = 0
            r2 = 2
            if (r4 == 0) goto L43
            if (r4 == r0) goto L37
            if (r4 == r2) goto L2d
            goto L4f
        L2d:
            r3.AADBufferSize = r5
            org.bouncycastle.crypto.engines.AEADBaseEngine$StreamAADOperator r4 = new org.bouncycastle.crypto.engines.AEADBaseEngine$StreamAADOperator
            r4.<init>()
        L34:
            r3.aadOperator = r4
            goto L4f
        L37:
            int r4 = r3.AADBufferSize
            byte[] r4 = new byte[r4]
            r3.m_aad = r4
            org.bouncycastle.crypto.engines.AEADBaseEngine$CounterAADOperator r4 = new org.bouncycastle.crypto.engines.AEADBaseEngine$CounterAADOperator
            r4.<init>()
            goto L34
        L43:
            int r4 = r3.AADBufferSize
            byte[] r4 = new byte[r4]
            r3.m_aad = r4
            org.bouncycastle.crypto.engines.AEADBaseEngine$DefaultAADOperator r4 = new org.bouncycastle.crypto.engines.AEADBaseEngine$DefaultAADOperator
            r4.<init>()
            goto L34
        L4f:
            int r4 = org.bouncycastle.crypto.engines.AEADBaseEngine.DataOperatorType.access$600(r6)
            if (r4 == 0) goto L85
            if (r4 == r0) goto L79
            if (r4 == r2) goto L6d
            r6 = 3
            if (r4 == r6) goto L5d
            goto L91
        L5d:
            r3.BlockSize = r5
            int r4 = r3.m_bufferSizeDecrypt
            byte[] r4 = new byte[r4]
            r3.m_buf = r4
            org.bouncycastle.crypto.engines.AEADBaseEngine$StreamCipherOperator r4 = new org.bouncycastle.crypto.engines.AEADBaseEngine$StreamCipherOperator
            r4.<init>()
        L6a:
            r3.dataOperator = r4
            goto L91
        L6d:
            int r4 = r3.MAC_SIZE
            byte[] r4 = new byte[r4]
            r3.m_buf = r4
            org.bouncycastle.crypto.engines.AEADBaseEngine$StreamDataOperator r4 = new org.bouncycastle.crypto.engines.AEADBaseEngine$StreamDataOperator
            r4.<init>()
            goto L6a
        L79:
            int r4 = r3.m_bufferSizeDecrypt
            byte[] r4 = new byte[r4]
            r3.m_buf = r4
            org.bouncycastle.crypto.engines.AEADBaseEngine$CounterDataOperator r4 = new org.bouncycastle.crypto.engines.AEADBaseEngine$CounterDataOperator
            r4.<init>()
            goto L6a
        L85:
            int r4 = r3.m_bufferSizeDecrypt
            byte[] r4 = new byte[r4]
            r3.m_buf = r4
            org.bouncycastle.crypto.engines.AEADBaseEngine$DefaultDataOperator r4 = new org.bouncycastle.crypto.engines.AEADBaseEngine$DefaultDataOperator
            r4.<init>()
            goto L6a
        L91:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.crypto.engines.AEADBaseEngine.setInnerMembers(org.bouncycastle.crypto.engines.AEADBaseEngine$ProcessingBufferType, org.bouncycastle.crypto.engines.AEADBaseEngine$AADOperatorType, org.bouncycastle.crypto.engines.AEADBaseEngine$DataOperatorType):void");
    }

    public void reset(boolean z) {
        ensureInitialized();
        if (z) {
            this.mac = null;
        }
        byte[] bArr = this.m_buf;
        if (bArr != null) {
            Arrays.fill(bArr, (byte) 0);
            this.m_bufPos = 0;
        }
        byte[] bArr2 = this.m_aad;
        if (bArr2 != null) {
            Arrays.fill(bArr2, (byte) 0);
            this.m_aadPos = 0;
        }
        switch (this.m_state.ord) {
            case 1:
            case 5:
                break;
            case 2:
            case 3:
            case 4:
                this.m_state = State.EncFinal;
                return;
            case 6:
            case 7:
            case 8:
                this.m_state = State.DecFinal;
                break;
            default:
                throw new IllegalStateException(Ve.k(new StringBuilder(), getAlgorithmName(), " needs to be initialized"));
        }
        this.aadOperator.reset();
        this.dataOperator.reset();
    }
}
