.class public final Lo/n3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/n3;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lo/Ib;

.field public final b:Lo/Ib;

.field public final c:Lo/p5;

.field public final d:Lo/Ib;

.field public final e:I

.field public final f:I

.field public final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lo/l0;

    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-direct {v0, v1}, Lo/l0;-><init>(I)V

    .line 7
    sput-object v0, Lo/n3;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    return-void
.end method

.method public constructor <init>(Lo/Ib;Lo/Ib;Lo/p5;Lo/Ib;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, "start cannot be null"

    .line 6
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    const-string v0, "end cannot be null"

    .line 11
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    const-string v0, "validator cannot be null"

    .line 16
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    iput-object p1, p0, Lo/n3;->a:Lo/Ib;

    .line 21
    iput-object p2, p0, Lo/n3;->b:Lo/Ib;

    .line 23
    iput-object p4, p0, Lo/n3;->d:Lo/Ib;

    .line 25
    iput p5, p0, Lo/n3;->e:I

    .line 27
    iput-object p3, p0, Lo/n3;->c:Lo/p5;

    .line 29
    if-eqz p4, :cond_1

    .line 31
    iget-object p3, p1, Lo/Ib;->a:Ljava/util/Calendar;

    .line 33
    iget-object v0, p4, Lo/Ib;->a:Ljava/util/Calendar;

    .line 35
    invoke-virtual {p3, v0}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    .line 38
    move-result p3

    .line 39
    if-gtz p3, :cond_0

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 44
    const-string p2, "start Month cannot be after current Month"

    .line 46
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 49
    throw p1

    .line 50
    :cond_1
    :goto_0
    if-eqz p4, :cond_3

    .line 52
    iget-object p3, p4, Lo/Ib;->a:Ljava/util/Calendar;

    .line 54
    iget-object p4, p2, Lo/Ib;->a:Ljava/util/Calendar;

    .line 56
    invoke-virtual {p3, p4}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    .line 59
    move-result p3

    .line 60
    if-gtz p3, :cond_2

    .line 62
    goto :goto_1

    .line 63
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 65
    const-string p2, "current Month cannot be after end Month"

    .line 67
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 70
    throw p1

    .line 71
    :cond_3
    :goto_1
    if-ltz p5, :cond_4

    .line 73
    const/4 p3, 0x0

    .line 74
    invoke-static {p3}, Lo/Xg;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 77
    move-result-object p3

    .line 78
    const/4 p4, 0x7

    .line 79
    invoke-virtual {p3, p4}, Ljava/util/Calendar;->getMaximum(I)I

    .line 82
    move-result p3

    .line 83
    if-gt p5, p3, :cond_4

    .line 85
    invoke-virtual {p1, p2}, Lo/Ib;->d(Lo/Ib;)I

    .line 88
    move-result p3

    .line 89
    add-int/lit8 p3, p3, 0x1

    .line 91
    iput p3, p0, Lo/n3;->g:I

    .line 93
    iget p2, p2, Lo/Ib;->c:I

    .line 95
    iget p1, p1, Lo/Ib;->c:I

    .line 97
    sub-int/2addr p2, p1

    .line 98
    add-int/lit8 p2, p2, 0x1

    .line 100
    iput p2, p0, Lo/n3;->f:I

    .line 102
    return-void

    .line 103
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 105
    const-string p2, "firstDayOfWeek is not valid"

    .line 107
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 110
    throw p1
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lo/n3;

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lo/n3;

    .line 13
    iget-object v1, p1, Lo/n3;->a:Lo/Ib;

    .line 15
    iget-object v3, p0, Lo/n3;->a:Lo/Ib;

    .line 17
    invoke-virtual {v3, v1}, Lo/Ib;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 23
    iget-object v1, p0, Lo/n3;->b:Lo/Ib;

    .line 25
    iget-object v3, p1, Lo/n3;->b:Lo/Ib;

    .line 27
    invoke-virtual {v1, v3}, Lo/Ib;->equals(Ljava/lang/Object;)Z

    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 33
    iget-object v1, p0, Lo/n3;->d:Lo/Ib;

    .line 35
    iget-object v3, p1, Lo/n3;->d:Lo/Ib;

    .line 37
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_2

    .line 43
    iget v1, p0, Lo/n3;->e:I

    .line 45
    iget v3, p1, Lo/n3;->e:I

    .line 47
    if-ne v1, v3, :cond_2

    .line 49
    iget-object v1, p0, Lo/n3;->c:Lo/p5;

    .line 51
    iget-object p1, p1, Lo/n3;->c:Lo/p5;

    .line 53
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_2

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    move v0, v2

    .line 61
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget v0, p0, Lo/n3;->e:I

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lo/n3;->c:Lo/p5;

    .line 9
    iget-object v2, p0, Lo/n3;->a:Lo/Ib;

    .line 11
    iget-object v3, p0, Lo/n3;->b:Lo/Ib;

    .line 13
    iget-object v4, p0, Lo/n3;->d:Lo/Ib;

    .line 15
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 22
    move-result v0

    .line 23
    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object p2, p0, Lo/n3;->a:Lo/Ib;

    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 7
    iget-object p2, p0, Lo/n3;->b:Lo/Ib;

    .line 9
    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 12
    iget-object p2, p0, Lo/n3;->d:Lo/Ib;

    .line 14
    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 17
    iget-object p2, p0, Lo/n3;->c:Lo/p5;

    .line 19
    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 22
    iget p2, p0, Lo/n3;->e:I

    .line 24
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    return-void
.end method
