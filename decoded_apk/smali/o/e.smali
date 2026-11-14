.class public final Lo/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lo/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lo/e;->a:I

    packed-switch v0, :pswitch_data_0

    .line 12
    new-instance v0, Lo/gg;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lo/gg;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    .line 13
    :pswitch_0
    new-instance v0, Lo/Pf;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lo/Pf;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    .line 14
    :pswitch_1
    new-instance v0, Lo/Pe;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lo/Pe;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    .line 15
    :pswitch_2
    new-instance v0, Lo/Cd;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lo/Cd;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    .line 16
    :pswitch_3
    new-instance v0, Lo/Na;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lo/Na;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    .line 17
    :pswitch_4
    new-instance v0, Lo/b5;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lo/b5;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    .line 18
    :pswitch_5
    new-instance v0, Lo/K3;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lo/K3;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    .line 19
    :pswitch_6
    new-instance v0, Lo/j3;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lo/j3;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    :pswitch_7
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    if-nez p1, :cond_0

    .line 21
    sget-object p1, Lo/f;->b:Lo/d;

    return-object p1

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "superState must be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lo/e;->a:I

    packed-switch v0, :pswitch_data_0

    .line 1
    new-instance v0, Lo/gg;

    invoke-direct {v0, p1, p2}, Lo/gg;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    .line 2
    :pswitch_0
    new-instance v0, Lo/Pf;

    invoke-direct {v0, p1, p2}, Lo/Pf;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    .line 3
    :pswitch_1
    new-instance v0, Lo/Pe;

    invoke-direct {v0, p1, p2}, Lo/Pe;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    .line 4
    :pswitch_2
    new-instance v0, Lo/Cd;

    invoke-direct {v0, p1, p2}, Lo/Cd;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    .line 5
    :pswitch_3
    new-instance v0, Lo/Na;

    invoke-direct {v0, p1, p2}, Lo/Na;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    .line 6
    :pswitch_4
    new-instance v0, Lo/b5;

    invoke-direct {v0, p1, p2}, Lo/b5;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    .line 7
    :pswitch_5
    new-instance v0, Lo/K3;

    invoke-direct {v0, p1, p2}, Lo/K3;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    .line 8
    :pswitch_6
    new-instance v0, Lo/j3;

    invoke-direct {v0, p1, p2}, Lo/j3;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0

    .line 9
    :pswitch_7
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    if-nez p1, :cond_0

    .line 10
    sget-object p1, Lo/f;->b:Lo/d;

    return-object p1

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "superState must be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lo/e;->a:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    new-array p1, p1, [Lo/gg;

    .line 8
    return-object p1

    .line 9
    :pswitch_0
    new-array p1, p1, [Lo/Pf;

    .line 11
    return-object p1

    .line 12
    :pswitch_1
    new-array p1, p1, [Lo/Pe;

    .line 14
    return-object p1

    .line 15
    :pswitch_2
    new-array p1, p1, [Lo/Cd;

    .line 17
    return-object p1

    .line 18
    :pswitch_3
    new-array p1, p1, [Lo/Na;

    .line 20
    return-object p1

    .line 21
    :pswitch_4
    new-array p1, p1, [Lo/b5;

    .line 23
    return-object p1

    .line 24
    :pswitch_5
    new-array p1, p1, [Lo/K3;

    .line 26
    return-object p1

    .line 27
    :pswitch_6
    new-array p1, p1, [Lo/j3;

    .line 29
    return-object p1

    .line 30
    :pswitch_7
    new-array p1, p1, [Lo/f;

    .line 32
    return-object p1

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
