.class public final synthetic Lo/t3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic a:Lcom/google/android/material/carousel/CarouselLayoutManager;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/carousel/CarouselLayoutManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/t3;->a:Lcom/google/android/material/carousel/CarouselLayoutManager;

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/t3;->a:Lcom/google/android/material/carousel/CarouselLayoutManager;

    .line 3
    if-ne p2, p6, :cond_0

    .line 5
    if-ne p3, p7, :cond_0

    .line 7
    if-ne p4, p8, :cond_0

    .line 9
    if-eq p5, p9, :cond_1

    .line 11
    :cond_0
    new-instance p2, Lo/i0;

    .line 13
    const/4 p3, 0x2

    .line 14
    invoke-direct {p2, p3, v0}, Lo/i0;-><init>(ILjava/lang/Object;)V

    .line 17
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 20
    :cond_1
    return-void
.end method
