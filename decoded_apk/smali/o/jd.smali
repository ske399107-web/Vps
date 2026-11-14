.class public abstract Lo/jd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lo/id;

.field public static final b:Lo/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lo/id;

    .line 3
    invoke-direct {v0}, Lo/jd;-><init>()V

    .line 6
    sput-object v0, Lo/jd;->a:Lo/id;

    .line 8
    sget-object v0, Lo/z9;->a:Ljava/lang/Integer;

    .line 10
    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 15
    move-result v0

    .line 16
    const/16 v1, 0x22

    .line 18
    if-lt v0, v1, :cond_0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance v0, Lo/n7;

    .line 23
    invoke-direct {v0}, Lo/n7;-><init>()V

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    new-instance v0, Lo/Ic;

    .line 29
    invoke-direct {v0}, Lo/jd;-><init>()V

    .line 32
    :goto_1
    sput-object v0, Lo/jd;->b:Lo/h;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public b()I
    .locals 4

    .line 1
    :cond_0
    invoke-virtual {p0}, Lo/jd;->a()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    ushr-int/2addr v0, v1

    .line 7
    const v2, 0xfffe

    .line 10
    rem-int v2, v0, v2

    .line 12
    sub-int/2addr v0, v2

    .line 13
    const v3, 0xfffd

    .line 16
    add-int/2addr v0, v3

    .line 17
    if-ltz v0, :cond_0

    .line 19
    add-int/2addr v1, v2

    .line 20
    return v1
.end method
