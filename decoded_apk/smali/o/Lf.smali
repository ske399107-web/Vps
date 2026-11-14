.class public final Lo/Lf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/text/TextPaint;

.field public final b:Lo/M3;

.field public c:F

.field public d:Z

.field public final e:Ljava/lang/ref/WeakReference;

.field public f:Lo/If;


# direct methods
.method public constructor <init>(Lo/Kf;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/text/TextPaint;

    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    .line 10
    iput-object v0, p0, Lo/Lf;->a:Landroid/text/TextPaint;

    .line 12
    new-instance v0, Lo/M3;

    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-direct {v0, v2, p0}, Lo/M3;-><init>(ILjava/lang/Object;)V

    .line 18
    iput-object v0, p0, Lo/Lf;->b:Lo/M3;

    .line 20
    iput-boolean v1, p0, Lo/Lf;->d:Z

    .line 22
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 28
    iput-object v0, p0, Lo/Lf;->e:Ljava/lang/ref/WeakReference;

    .line 30
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 32
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 35
    iput-object v0, p0, Lo/Lf;->e:Ljava/lang/ref/WeakReference;

    .line 37
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)F
    .locals 3

    .line 1
    iget-boolean v0, p0, Lo/Lf;->d:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    iget p1, p0, Lo/Lf;->c:F

    .line 7
    return p1

    .line 8
    :cond_0
    iget-object v0, p0, Lo/Lf;->a:Landroid/text/TextPaint;

    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez p1, :cond_1

    .line 13
    const/4 v2, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 18
    move-result v2

    .line 19
    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    .line 22
    move-result v2

    .line 23
    :goto_0
    iput v2, p0, Lo/Lf;->c:F

    .line 25
    if-nez p1, :cond_2

    .line 27
    goto :goto_1

    .line 28
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    .line 31
    move-result-object p1

    .line 32
    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    .line 34
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 37
    :goto_1
    iput-boolean v1, p0, Lo/Lf;->d:Z

    .line 39
    iget p1, p0, Lo/Lf;->c:F

    .line 41
    return p1
.end method

.method public final b(Lo/If;Landroid/content/Context;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lo/Lf;->f:Lo/If;

    .line 3
    if-eq v0, p1, :cond_2

    .line 5
    iput-object p1, p0, Lo/Lf;->f:Lo/If;

    .line 7
    if-eqz p1, :cond_1

    .line 9
    iget-object v0, p0, Lo/Lf;->a:Landroid/text/TextPaint;

    .line 11
    iget-object v1, p0, Lo/Lf;->b:Lo/M3;

    .line 13
    invoke-virtual {p1, p2, v0, v1}, Lo/If;->f(Landroid/content/Context;Landroid/text/TextPaint;Lo/Ha;)V

    .line 16
    iget-object v2, p0, Lo/Lf;->e:Ljava/lang/ref/WeakReference;

    .line 18
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lo/Kf;

    .line 24
    if-eqz v2, :cond_0

    .line 26
    invoke-interface {v2}, Lo/Kf;->getState()[I

    .line 29
    move-result-object v2

    .line 30
    iput-object v2, v0, Landroid/text/TextPaint;->drawableState:[I

    .line 32
    :cond_0
    invoke-virtual {p1, p2, v0, v1}, Lo/If;->e(Landroid/content/Context;Landroid/text/TextPaint;Lo/Ha;)V

    .line 35
    const/4 p1, 0x1

    .line 36
    iput-boolean p1, p0, Lo/Lf;->d:Z

    .line 38
    :cond_1
    iget-object p1, p0, Lo/Lf;->e:Ljava/lang/ref/WeakReference;

    .line 40
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Lo/Kf;

    .line 46
    if-eqz p1, :cond_2

    .line 48
    invoke-interface {p1}, Lo/Kf;->a()V

    .line 51
    invoke-interface {p1}, Lo/Kf;->getState()[I

    .line 54
    move-result-object p2

    .line 55
    invoke-interface {p1, p2}, Lo/Kf;->onStateChange([I)Z

    .line 58
    :cond_2
    return-void
.end method
