.class public final Lo/b8;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public final b:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public c:Lo/lc;

.field public final synthetic d:Lo/i8;


# direct methods
.method public constructor <init>(Lo/i8;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/b8;->d:Lo/i8;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lo/b8;->a:Z

    .line 9
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 11
    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 14
    iput-object p1, p0, Lo/b8;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 16
    return-void
.end method
