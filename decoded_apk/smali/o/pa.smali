.class public Lo/pa;
.super Lo/Jh;
.source "SourceFile"


# instance fields
.field public final c:Lo/Ze;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lo/Jh;-><init>()V

    .line 4
    new-instance v0, Lo/Ze;

    .line 6
    invoke-direct {v0}, Lo/Ze;-><init>()V

    .line 9
    iput-object v0, p0, Lo/pa;->c:Lo/Ze;

    .line 11
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    iget-object v0, p0, Lo/pa;->c:Lo/Ze;

    .line 3
    iget v1, v0, Lo/Ze;->c:I

    .line 5
    const/4 v2, 0x0

    .line 6
    if-gtz v1, :cond_1

    .line 8
    iget-object v3, v0, Lo/Ze;->b:[Ljava/lang/Object;

    .line 10
    move v4, v2

    .line 11
    :goto_0
    if-ge v4, v1, :cond_0

    .line 13
    const/4 v5, 0x0

    .line 14
    aput-object v5, v3, v4

    .line 16
    add-int/lit8 v4, v4, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iput v2, v0, Lo/Ze;->c:I

    .line 21
    return-void

    .line 22
    :cond_1
    iget-object v0, v0, Lo/Ze;->b:[Ljava/lang/Object;

    .line 24
    aget-object v0, v0, v2

    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    new-instance v0, Ljava/lang/ClassCastException;

    .line 31
    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    .line 34
    throw v0
.end method
