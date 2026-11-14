package o;

import android.icu.text.DateFormat;
import android.icu.text.DisplayContext;
import android.icu.util.TimeZone;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class Ib implements Comparable, Parcelable {
    public static final Parcelable.Creator<Ib> CREATOR = new C0239l0(12);
    public final Calendar a;
    public final int b;
    public final int c;
    public final int d;
    public final int e;

    /* renamed from: f, reason: collision with root package name */
    public final long f106f;
    public String g;

    public Ib(Calendar calendar) {
        calendar.set(5, 1);
        Calendar a = Xg.a(calendar);
        this.a = a;
        this.b = a.get(2);
        this.c = a.get(1);
        this.d = a.getMaximum(7);
        this.e = a.getActualMaximum(5);
        this.f106f = a.getTimeInMillis();
    }

    public static Ib a(int i, int i2) {
        Calendar c = Xg.c(null);
        c.set(1, i);
        c.set(2, i2);
        return new Ib(c);
    }

    public static Ib b(long j) {
        Calendar c = Xg.c(null);
        c.setTimeInMillis(j);
        return new Ib(c);
    }

    public final String c() {
        if (this.g == null) {
            long timeInMillis = this.a.getTimeInMillis();
            Locale locale = Locale.getDefault();
            AtomicReference atomicReference = Xg.a;
            DateFormat instanceForSkeleton = DateFormat.getInstanceForSkeleton("yMMMM", locale);
            instanceForSkeleton.setTimeZone(TimeZone.getTimeZone("UTC"));
            instanceForSkeleton.setContext(DisplayContext.CAPITALIZATION_FOR_STANDALONE);
            this.g = instanceForSkeleton.format(new Date(timeInMillis));
        }
        return this.g;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return this.a.compareTo(((Ib) obj).a);
    }

    public final int d(Ib ib) {
        if (this.a instanceof GregorianCalendar) {
            return (ib.b - this.b) + ((ib.c - this.c) * 12);
        }
        throw new IllegalArgumentException("Only Gregorian calendars are supported.");
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Ib)) {
            return false;
        }
        Ib ib = (Ib) obj;
        if (this.b == ib.b && this.c == ib.c) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.b), Integer.valueOf(this.c)});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.c);
        parcel.writeInt(this.b);
    }
}
