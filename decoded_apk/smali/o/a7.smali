.class public final Lo/a7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/util/SparseArray;

.field public final b:Lo/b7;

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>(Lo/b7;Lo/s2;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 9
    iput-object v0, p0, Lo/a7;->a:Landroid/util/SparseArray;

    .line 11
    iput-object p1, p0, Lo/a7;->b:Lo/b7;

    .line 13
    iget-object p1, p2, Lo/s2;->b:Ljava/lang/Object;

    .line 15
    check-cast p1, Landroid/content/res/TypedArray;

    .line 17
    const/16 p2, 0x1c

    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 23
    move-result p2

    .line 24
    iput p2, p0, Lo/a7;->c:I

    .line 26
    const/16 p2, 0x34

    .line 28
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 31
    move-result p1

    .line 32
    iput p1, p0, Lo/a7;->d:I

    .line 34
    return-void
.end method
