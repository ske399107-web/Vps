.class public final Lo/wg;
.super Lo/vg;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lo/E2;

.field public final synthetic b:Lo/xg;


# direct methods
.method public constructor <init>(Lo/xg;Lo/E2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lo/wg;->b:Lo/xg;

    .line 6
    iput-object p2, p0, Lo/wg;->a:Lo/E2;

    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lo/ug;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo/wg;->b:Lo/xg;

    .line 3
    iget-object v0, v0, Lo/xg;->b:Landroid/widget/FrameLayout;

    .line 5
    iget-object v1, p0, Lo/wg;->a:Lo/E2;

    .line 7
    invoke-virtual {v1, v0}, Lo/Qe;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {p1, p0}, Lo/ug;->x(Lo/tg;)Lo/ug;

    .line 19
    return-void
.end method
