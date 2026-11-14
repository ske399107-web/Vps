package o;

import java.util.Locale;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;

/* renamed from: o.o, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public abstract class AbstractFutureC0298o implements Future {
    public static final boolean d = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));
    public static final Logger e = Logger.getLogger(AbstractFutureC0298o.class.getName());

    /* renamed from: f, reason: collision with root package name */
    public static final AbstractC0487x9 f264f;
    public static final Object g;
    public volatile Object a;
    public volatile C0218k b;
    public volatile C0278n c;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v4, types: [o.x9] */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v7 */
    static {
        ?? r4;
        try {
            th = null;
            r4 = new C0238l(AtomicReferenceFieldUpdater.newUpdater(C0278n.class, Thread.class, "a"), AtomicReferenceFieldUpdater.newUpdater(C0278n.class, C0278n.class, "b"), AtomicReferenceFieldUpdater.newUpdater(AbstractFutureC0298o.class, C0278n.class, "c"), AtomicReferenceFieldUpdater.newUpdater(AbstractFutureC0298o.class, C0218k.class, "b"), AtomicReferenceFieldUpdater.newUpdater(AbstractFutureC0298o.class, Object.class, "a"));
        } catch (Throwable th) {
            th = th;
            r4 = new Object();
        }
        f264f = r4;
        if (th != null) {
            e.log(Level.SEVERE, "SafeAtomicHelper is broken!", th);
        }
        g = new Object();
    }

    public static void b(AbstractFutureC0298o abstractFutureC0298o) {
        C0278n c0278n;
        C0218k c0218k;
        do {
            c0278n = abstractFutureC0298o.c;
        } while (!f264f.i(abstractFutureC0298o, c0278n, C0278n.c));
        while (c0278n != null) {
            Thread thread = c0278n.a;
            if (thread != null) {
                c0278n.a = null;
                LockSupport.unpark(thread);
            }
            c0278n = c0278n.b;
        }
        do {
            c0218k = abstractFutureC0298o.b;
        } while (!f264f.g(abstractFutureC0298o, c0218k));
        C0218k c0218k2 = null;
        while (c0218k != null) {
            C0218k c0218k3 = c0218k.a;
            c0218k.a = c0218k2;
            c0218k2 = c0218k;
            c0218k = c0218k3;
        }
        while (c0218k2 != null) {
            c0218k2 = c0218k2.a;
            try {
                throw null;
                break;
            } catch (RuntimeException e2) {
                e.log(Level.SEVERE, "RuntimeException while executing runnable null with executor null", (Throwable) e2);
            }
        }
    }

    public static Object c(Object obj) {
        if (!(obj instanceof C0179i)) {
            if (!(obj instanceof AbstractC0198j)) {
                if (obj == g) {
                    return null;
                }
                return obj;
            }
            ((AbstractC0198j) obj).getClass();
            throw new ExecutionException((Throwable) null);
        }
        CancellationException cancellationException = ((C0179i) obj).a;
        CancellationException cancellationException2 = new CancellationException("Task was cancelled.");
        cancellationException2.initCause(cancellationException);
        throw cancellationException2;
    }

    public static Object d(AbstractFutureC0298o abstractFutureC0298o) {
        Object obj;
        boolean z = false;
        while (true) {
            try {
                obj = abstractFutureC0298o.get();
                break;
            } catch (InterruptedException unused) {
                z = true;
            } catch (Throwable th) {
                if (z) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        return obj;
    }

    public final void a(StringBuilder sb) {
        String valueOf;
        try {
            Object d2 = d(this);
            sb.append("SUCCESS, result=[");
            if (d2 == this) {
                valueOf = "this future";
            } else {
                valueOf = String.valueOf(d2);
            }
            sb.append(valueOf);
            sb.append("]");
        } catch (CancellationException unused) {
            sb.append("CANCELLED");
        } catch (RuntimeException e2) {
            sb.append("UNKNOWN, cause=[");
            sb.append(e2.getClass());
            sb.append(" thrown from get()]");
        } catch (ExecutionException e3) {
            sb.append("FAILURE, cause=[");
            sb.append(e3.getCause());
            sb.append("]");
        }
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        C0179i c0179i;
        Object obj = this.a;
        if (obj != null) {
            return false;
        }
        if (d) {
            c0179i = new C0179i(z, new CancellationException("Future.cancel() was called."));
        } else if (z) {
            c0179i = C0179i.b;
        } else {
            c0179i = C0179i.c;
        }
        if (!f264f.h(this, obj, c0179i)) {
            return false;
        }
        b(this);
        return true;
    }

    public final void e(C0278n c0278n) {
        c0278n.a = null;
        while (true) {
            C0278n c0278n2 = this.c;
            if (c0278n2 == C0278n.c) {
                return;
            }
            C0278n c0278n3 = null;
            while (c0278n2 != null) {
                C0278n c0278n4 = c0278n2.b;
                if (c0278n2.a != null) {
                    c0278n3 = c0278n2;
                } else if (c0278n3 != null) {
                    c0278n3.b = c0278n4;
                    if (c0278n3.a == null) {
                        break;
                    }
                } else if (!f264f.i(this, c0278n2, c0278n4)) {
                    break;
                }
                c0278n2 = c0278n4;
            }
            return;
        }
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j, TimeUnit timeUnit) {
        long nanos = timeUnit.toNanos(j);
        if (!Thread.interrupted()) {
            Object obj = this.a;
            if (obj != null) {
                return c(obj);
            }
            long nanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
            if (nanos >= 1000) {
                C0278n c0278n = this.c;
                C0278n c0278n2 = C0278n.c;
                if (c0278n != c0278n2) {
                    C0278n c0278n3 = new C0278n();
                    do {
                        AbstractC0487x9 abstractC0487x9 = f264f;
                        abstractC0487x9.M(c0278n3, c0278n);
                        if (abstractC0487x9.i(this, c0278n, c0278n3)) {
                            do {
                                LockSupport.parkNanos(this, nanos);
                                if (!Thread.interrupted()) {
                                    Object obj2 = this.a;
                                    if (obj2 != null) {
                                        return c(obj2);
                                    }
                                    nanos = nanoTime - System.nanoTime();
                                } else {
                                    e(c0278n3);
                                    throw new InterruptedException();
                                }
                            } while (nanos >= 1000);
                            e(c0278n3);
                        } else {
                            c0278n = this.c;
                        }
                    } while (c0278n != c0278n2);
                }
                return c(this.a);
            }
            while (nanos > 0) {
                Object obj3 = this.a;
                if (obj3 != null) {
                    return c(obj3);
                }
                if (!Thread.interrupted()) {
                    nanos = nanoTime - System.nanoTime();
                } else {
                    throw new InterruptedException();
                }
            }
            String abstractFutureC0298o = toString();
            String obj4 = timeUnit.toString();
            Locale locale = Locale.ROOT;
            String lowerCase = obj4.toLowerCase(locale);
            String str = "Waited " + j + " " + timeUnit.toString().toLowerCase(locale);
            if (nanos + 1000 < 0) {
                String h = Ve.h(str, " (plus ");
                long j2 = -nanos;
                long convert = timeUnit.convert(j2, TimeUnit.NANOSECONDS);
                long nanos2 = j2 - timeUnit.toNanos(convert);
                boolean z = convert == 0 || nanos2 > 1000;
                if (convert > 0) {
                    String str2 = h + convert + " " + lowerCase;
                    if (z) {
                        str2 = Ve.h(str2, ",");
                    }
                    h = Ve.h(str2, " ");
                }
                if (z) {
                    h = h + nanos2 + " nanoseconds ";
                }
                str = Ve.h(h, "delay)");
            }
            if (isDone()) {
                throw new TimeoutException(Ve.h(str, " but future completed as timeout expired"));
            }
            throw new TimeoutException(str + " for " + abstractFutureC0298o);
        }
        throw new InterruptedException();
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.a instanceof C0179i;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        if (this.a != null) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("[status=");
        if (this.a instanceof C0179i) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            a(sb);
        } else {
            try {
                if (this instanceof ScheduledFuture) {
                    str = "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
                } else {
                    str = null;
                }
            } catch (RuntimeException e2) {
                str = "Exception thrown from implementation: " + e2.getClass();
            }
            if (str != null && !str.isEmpty()) {
                sb.append("PENDING, info=[");
                sb.append(str);
                sb.append("]");
            } else if (isDone()) {
                a(sb);
            } else {
                sb.append("PENDING");
            }
        }
        sb.append("]");
        return sb.toString();
    }

    @Override // java.util.concurrent.Future
    public final Object get() {
        Object obj;
        if (!Thread.interrupted()) {
            Object obj2 = this.a;
            if (obj2 != null) {
                return c(obj2);
            }
            C0278n c0278n = this.c;
            C0278n c0278n2 = C0278n.c;
            if (c0278n != c0278n2) {
                C0278n c0278n3 = new C0278n();
                do {
                    AbstractC0487x9 abstractC0487x9 = f264f;
                    abstractC0487x9.M(c0278n3, c0278n);
                    if (abstractC0487x9.i(this, c0278n, c0278n3)) {
                        do {
                            LockSupport.park(this);
                            if (!Thread.interrupted()) {
                                obj = this.a;
                            } else {
                                e(c0278n3);
                                throw new InterruptedException();
                            }
                        } while (obj == null);
                        return c(obj);
                    }
                    c0278n = this.c;
                } while (c0278n != c0278n2);
            }
            return c(this.a);
        }
        throw new InterruptedException();
    }
}
