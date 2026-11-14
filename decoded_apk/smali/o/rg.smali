.class public final Lo/rg;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lo/ug;Lo/E2;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lo/rg;->a:I

    .line 2
    iput-object p1, p0, Lo/rg;->c:Ljava/lang/Object;

    iput-object p2, p0, Lo/rg;->b:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/zi;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lo/rg;->a:I

    .line 1
    iput-object p1, p0, Lo/rg;->b:Ljava/lang/Object;

    iput-object p2, p0, Lo/rg;->c:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget v0, p0, Lo/rg;->a:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object p1, p0, Lo/rg;->b:Ljava/lang/Object;

    .line 8
    check-cast p1, Lo/zi;

    .line 10
    iget-object p1, p1, Lo/zi;->a:Lo/yi;

    .line 12
    const/high16 v0, 0x3f800000    # 1.0f

    .line 14
    invoke-virtual {p1, v0}, Lo/yi;->d(F)V

    .line 17
    iget-object p1, p0, Lo/rg;->c:Ljava/lang/Object;

    .line 19
    check-cast p1, Landroid/view/View;

    .line 21
    invoke-static {p1}, Lo/vi;->e(Landroid/view/View;)V

    .line 24
    return-void

    .line 25
    :pswitch_0
    iget-object v0, p0, Lo/rg;->b:Ljava/lang/Object;

    .line 27
    check-cast v0, Lo/E2;

    .line 29
    invoke-virtual {v0, p1}, Lo/Qe;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v0, p0, Lo/rg;->c:Ljava/lang/Object;

    .line 34
    check-cast v0, Lo/ug;

    .line 36
    iget-object v0, v0, Lo/ug;->n:Ljava/util/ArrayList;

    .line 38
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 41
    return-void

    nop

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget v0, p0, Lo/rg;->a:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 9
    return-void

    .line 10
    :pswitch_0
    iget-object v0, p0, Lo/rg;->c:Ljava/lang/Object;

    .line 12
    check-cast v0, Lo/ug;

    .line 14
    iget-object v0, v0, Lo/ug;->n:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    return-void

    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
