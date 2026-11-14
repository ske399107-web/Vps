.class public final Lo/Tc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo/R9;


# static fields
.field public static final i:Lo/Tc;


# instance fields
.field public a:I

.field public b:I

.field public c:Z

.field public d:Z

.field public e:Landroid/os/Handler;

.field public final f:Landroidx/lifecycle/a;

.field public final g:Lo/i0;

.field public final h:Lo/C;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lo/Tc;

    .line 3
    invoke-direct {v0}, Lo/Tc;-><init>()V

    .line 6
    sput-object v0, Lo/Tc;->i:Lo/Tc;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lo/Tc;->c:Z

    .line 7
    iput-boolean v0, p0, Lo/Tc;->d:Z

    .line 9
    new-instance v0, Landroidx/lifecycle/a;

    .line 11
    invoke-direct {v0, p0}, Landroidx/lifecycle/a;-><init>(Lo/R9;)V

    .line 14
    iput-object v0, p0, Lo/Tc;->f:Landroidx/lifecycle/a;

    .line 16
    new-instance v0, Lo/i0;

    .line 18
    const/16 v1, 0xa

    .line 20
    invoke-direct {v0, v1, p0}, Lo/i0;-><init>(ILjava/lang/Object;)V

    .line 23
    iput-object v0, p0, Lo/Tc;->g:Lo/i0;

    .line 25
    new-instance v0, Lo/C;

    .line 27
    const/16 v1, 0x18

    .line 29
    invoke-direct {v0, v1, p0}, Lo/C;-><init>(ILjava/lang/Object;)V

    .line 32
    iput-object v0, p0, Lo/Tc;->h:Lo/C;

    .line 34
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget v0, p0, Lo/Tc;->b:I

    .line 3
    const/4 v1, 0x1

    .line 4
    add-int/2addr v0, v1

    .line 5
    iput v0, p0, Lo/Tc;->b:I

    .line 7
    if-ne v0, v1, :cond_1

    .line 9
    iget-boolean v0, p0, Lo/Tc;->c:Z

    .line 11
    if-eqz v0, :cond_0

    .line 13
    iget-object v0, p0, Lo/Tc;->f:Landroidx/lifecycle/a;

    .line 15
    sget-object v1, Lo/L9;->ON_RESUME:Lo/L9;

    .line 17
    invoke-virtual {v0, v1}, Landroidx/lifecycle/a;->d(Lo/L9;)V

    .line 20
    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lo/Tc;->c:Z

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Lo/Tc;->e:Landroid/os/Handler;

    .line 26
    invoke-static {v0}, Lo/x9;->l(Ljava/lang/Object;)V

    .line 29
    iget-object v1, p0, Lo/Tc;->g:Lo/i0;

    .line 31
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 34
    :cond_1
    :goto_0
    return-void
.end method

.method public final e()Landroidx/lifecycle/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/Tc;->f:Landroidx/lifecycle/a;

    .line 3
    return-object v0
.end method
