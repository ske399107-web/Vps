.class public final Lo/P1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lo/P1;->a:I

    iput-object p2, p0, Lo/P1;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 4

    .line 1
    iget v0, p0, Lo/P1;->a:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lo/P1;->b:Ljava/lang/Object;

    .line 8
    check-cast v0, Lo/hf;

    .line 10
    invoke-virtual {v0}, Lo/hf;->b()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_2

    .line 16
    iget-object v1, v0, Lo/hf;->h:Lo/yb;

    .line 18
    iget-boolean v2, v1, Lo/la;->y:Z

    .line 20
    if-nez v2, :cond_2

    .line 22
    iget-object v2, v0, Lo/hf;->m:Landroid/view/View;

    .line 24
    if-eqz v2, :cond_1

    .line 26
    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    .line 29
    move-result v2

    .line 30
    if-nez v2, :cond_0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v1}, Lo/la;->f()V

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lo/hf;->dismiss()V

    .line 40
    :cond_2
    :goto_1
    return-void

    .line 41
    :pswitch_0
    iget-object v0, p0, Lo/P1;->b:Ljava/lang/Object;

    .line 43
    check-cast v0, Lo/A3;

    .line 45
    invoke-virtual {v0}, Lo/A3;->b()Z

    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_5

    .line 51
    iget-object v1, v0, Lo/A3;->h:Ljava/util/ArrayList;

    .line 53
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 56
    move-result v2

    .line 57
    if-lez v2, :cond_5

    .line 59
    const/4 v2, 0x0

    .line 60
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 63
    move-result-object v2

    .line 64
    check-cast v2, Lo/z3;

    .line 66
    iget-object v2, v2, Lo/z3;->a:Lo/yb;

    .line 68
    iget-boolean v2, v2, Lo/la;->y:Z

    .line 70
    if-nez v2, :cond_5

    .line 72
    iget-object v2, v0, Lo/A3;->o:Landroid/view/View;

    .line 74
    if-eqz v2, :cond_4

    .line 76
    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    .line 79
    move-result v2

    .line 80
    if-nez v2, :cond_3

    .line 82
    goto :goto_3

    .line 83
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 86
    move-result-object v0

    .line 87
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    move-result v1

    .line 91
    if-eqz v1, :cond_5

    .line 93
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    move-result-object v1

    .line 97
    check-cast v1, Lo/z3;

    .line 99
    iget-object v1, v1, Lo/z3;->a:Lo/yb;

    .line 101
    invoke-virtual {v1}, Lo/la;->f()V

    .line 104
    goto :goto_2

    .line 105
    :cond_4
    :goto_3
    invoke-virtual {v0}, Lo/A3;->dismiss()V

    .line 108
    :cond_5
    return-void

    .line 109
    :pswitch_1
    iget-object v0, p0, Lo/P1;->b:Ljava/lang/Object;

    .line 111
    check-cast v0, Lo/V1;

    .line 113
    iget-object v1, v0, Lo/V1;->G:Lo/Y1;

    .line 115
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    .line 121
    move-result v2

    .line 122
    if-eqz v2, :cond_6

    .line 124
    iget-object v2, v0, Lo/V1;->E:Landroid/graphics/Rect;

    .line 126
    invoke-virtual {v1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 129
    move-result v1

    .line 130
    if-eqz v1, :cond_6

    .line 132
    invoke-virtual {v0}, Lo/V1;->s()V

    .line 135
    invoke-virtual {v0}, Lo/la;->f()V

    .line 138
    goto :goto_4

    .line 139
    :cond_6
    invoke-virtual {v0}, Lo/la;->dismiss()V

    .line 142
    :goto_4
    return-void

    .line 143
    :pswitch_2
    iget-object v0, p0, Lo/P1;->b:Ljava/lang/Object;

    .line 145
    check-cast v0, Lo/Y1;

    .line 147
    invoke-virtual {v0}, Lo/Y1;->getInternalPopup()Lo/X1;

    .line 150
    move-result-object v1

    .line 151
    invoke-interface {v1}, Lo/X1;->b()Z

    .line 154
    move-result v1

    .line 155
    if-nez v1, :cond_7

    .line 157
    invoke-virtual {v0}, Landroid/view/View;->getTextDirection()I

    .line 160
    move-result v1

    .line 161
    invoke-virtual {v0}, Landroid/view/View;->getTextAlignment()I

    .line 164
    move-result v2

    .line 165
    iget-object v3, v0, Lo/Y1;->f:Lo/X1;

    .line 167
    invoke-interface {v3, v1, v2}, Lo/X1;->e(II)V

    .line 170
    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 173
    move-result-object v0

    .line 174
    if-eqz v0, :cond_8

    .line 176
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 179
    :cond_8
    return-void

    nop

    .line 181
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
