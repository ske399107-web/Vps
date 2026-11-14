.class public abstract Lo/bd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[I

.field public static final b:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const v0, 0x7f03026f

    .line 4
    const v1, 0x7f030400

    .line 7
    filled-new-array {v0, v1}, [I

    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lo/bd;->a:[I

    .line 13
    const/4 v0, 0x7

    .line 14
    new-array v0, v0, [I

    .line 16
    fill-array-data v0, :array_0

    .line 19
    sput-object v0, Lo/bd;->b:[I

    .line 21
    return-void

    nop

    .line 23
    :array_0
    .array-data 4
        0x10100b3
        0x7f03027b
        0x7f03027c
        0x7f03027d
        0x7f0302ae
        0x7f0302b8
        0x7f0302b9
    .end array-data
.end method
