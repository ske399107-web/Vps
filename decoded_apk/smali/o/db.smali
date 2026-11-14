.class public Lo/db;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SourceFile"


# instance fields
.field public a:Lo/Ae;

.field public b:Lo/w6;

.field public c:Landroid/content/res/ColorStateList;

.field public d:Landroid/content/res/ColorStateList;

.field public e:Landroid/content/res/ColorStateList;

.field public f:Landroid/graphics/PorterDuff$Mode;

.field public g:Landroid/graphics/Rect;

.field public final h:F

.field public i:F

.field public j:F

.field public k:I

.field public l:F

.field public m:F

.field public n:I

.field public o:I

.field public p:I

.field public final q:Landroid/graphics/Paint$Style;


# direct methods
.method public constructor <init>(Lo/Ae;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lo/db;->c:Landroid/content/res/ColorStateList;

    .line 3
    iput-object v0, p0, Lo/db;->d:Landroid/content/res/ColorStateList;

    .line 4
    iput-object v0, p0, Lo/db;->e:Landroid/content/res/ColorStateList;

    .line 5
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v1, p0, Lo/db;->f:Landroid/graphics/PorterDuff$Mode;

    .line 6
    iput-object v0, p0, Lo/db;->g:Landroid/graphics/Rect;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 7
    iput v1, p0, Lo/db;->h:F

    .line 8
    iput v1, p0, Lo/db;->i:F

    const/16 v1, 0xff

    .line 9
    iput v1, p0, Lo/db;->k:I

    const/4 v1, 0x0

    .line 10
    iput v1, p0, Lo/db;->l:F

    .line 11
    iput v1, p0, Lo/db;->m:F

    const/4 v1, 0x0

    .line 12
    iput v1, p0, Lo/db;->n:I

    .line 13
    iput v1, p0, Lo/db;->o:I

    .line 14
    iput v1, p0, Lo/db;->p:I

    .line 15
    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    iput-object v1, p0, Lo/db;->q:Landroid/graphics/Paint$Style;

    .line 16
    iput-object p1, p0, Lo/db;->a:Lo/Ae;

    .line 17
    iput-object v0, p0, Lo/db;->b:Lo/w6;

    return-void
.end method

.method public constructor <init>(Lo/db;)V
    .locals 2

    .line 18
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lo/db;->c:Landroid/content/res/ColorStateList;

    .line 20
    iput-object v0, p0, Lo/db;->d:Landroid/content/res/ColorStateList;

    .line 21
    iput-object v0, p0, Lo/db;->e:Landroid/content/res/ColorStateList;

    .line 22
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v1, p0, Lo/db;->f:Landroid/graphics/PorterDuff$Mode;

    .line 23
    iput-object v0, p0, Lo/db;->g:Landroid/graphics/Rect;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 24
    iput v0, p0, Lo/db;->h:F

    .line 25
    iput v0, p0, Lo/db;->i:F

    const/16 v0, 0xff

    .line 26
    iput v0, p0, Lo/db;->k:I

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lo/db;->l:F

    .line 28
    iput v0, p0, Lo/db;->m:F

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lo/db;->n:I

    .line 30
    iput v0, p0, Lo/db;->o:I

    .line 31
    iput v0, p0, Lo/db;->p:I

    .line 32
    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    iput-object v0, p0, Lo/db;->q:Landroid/graphics/Paint$Style;

    .line 33
    iget-object v0, p1, Lo/db;->a:Lo/Ae;

    iput-object v0, p0, Lo/db;->a:Lo/Ae;

    .line 34
    iget-object v0, p1, Lo/db;->b:Lo/w6;

    iput-object v0, p0, Lo/db;->b:Lo/w6;

    .line 35
    iget v0, p1, Lo/db;->j:F

    iput v0, p0, Lo/db;->j:F

    .line 36
    iget-object v0, p1, Lo/db;->c:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lo/db;->c:Landroid/content/res/ColorStateList;

    .line 37
    iget-object v0, p1, Lo/db;->d:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lo/db;->d:Landroid/content/res/ColorStateList;

    .line 38
    iget-object v0, p1, Lo/db;->f:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lo/db;->f:Landroid/graphics/PorterDuff$Mode;

    .line 39
    iget-object v0, p1, Lo/db;->e:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lo/db;->e:Landroid/content/res/ColorStateList;

    .line 40
    iget v0, p1, Lo/db;->k:I

    iput v0, p0, Lo/db;->k:I

    .line 41
    iget v0, p1, Lo/db;->h:F

    iput v0, p0, Lo/db;->h:F

    .line 42
    iget v0, p1, Lo/db;->p:I

    iput v0, p0, Lo/db;->p:I

    .line 43
    iget v0, p1, Lo/db;->n:I

    iput v0, p0, Lo/db;->n:I

    .line 44
    iget v0, p1, Lo/db;->i:F

    iput v0, p0, Lo/db;->i:F

    .line 45
    iget v0, p1, Lo/db;->l:F

    iput v0, p0, Lo/db;->l:F

    .line 46
    iget v0, p1, Lo/db;->m:F

    iput v0, p0, Lo/db;->m:F

    .line 47
    iget v0, p1, Lo/db;->o:I

    iput v0, p0, Lo/db;->o:I

    .line 48
    iget-object v0, p1, Lo/db;->q:Landroid/graphics/Paint$Style;

    iput-object v0, p0, Lo/db;->q:Landroid/graphics/Paint$Style;

    .line 49
    iget-object v0, p1, Lo/db;->g:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    iget-object p1, p1, Lo/db;->g:Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lo/db;->g:Landroid/graphics/Rect;

    :cond_0
    return-void
.end method


# virtual methods
.method public final getChangingConfigurations()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    new-instance v0, Lo/eb;

    .line 3
    invoke-direct {v0, p0}, Lo/eb;-><init>(Lo/db;)V

    .line 6
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, v0, Lo/eb;->e:Z

    .line 9
    return-object v0
.end method
