.class public Lo/H1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo/r3;
.implements Lo/M6;
.implements Lo/ec;


# static fields
.field public static final d:[I


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const v0, 0x101013b

    .line 4
    const v1, 0x101013c

    .line 7
    filled-new-array {v0, v1}, [I

    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lo/H1;->d:[I

    .line 13
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, Lo/H1;->a:I

    packed-switch p1, :pswitch_data_0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lo/H1;->b:Ljava/lang/Object;

    .line 101
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lo/H1;->c:Ljava/lang/Object;

    return-void

    .line 102
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance p1, Lo/Qe;

    const/4 v0, 0x0

    .line 104
    invoke-direct {p1, v0}, Lo/Qe;-><init>(I)V

    .line 105
    iput-object p1, p0, Lo/H1;->b:Ljava/lang/Object;

    .line 106
    new-instance p1, Lo/za;

    invoke-direct {p1}, Lo/za;-><init>()V

    iput-object p1, p0, Lo/H1;->c:Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(II)V
    .locals 1

    const/16 v0, 0xf

    iput v0, p0, Lo/H1;->a:I

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    filled-new-array {p1, p2}, [I

    move-result-object p1

    iput-object p1, p0, Lo/H1;->b:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 95
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    iput-object p1, p0, Lo/H1;->c:Ljava/lang/Object;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(III)V
    .locals 1

    const/16 v0, 0xf

    iput v0, p0, Lo/H1;->a:I

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    filled-new-array {p1, p2, p3}, [I

    move-result-object p1

    iput-object p1, p0, Lo/H1;->b:Ljava/lang/Object;

    const/4 p1, 0x3

    .line 98
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    iput-object p1, p0, Lo/H1;->c:Ljava/lang/Object;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public synthetic constructor <init>(IZ)V
    .locals 0

    .line 1
    iput p1, p0, Lo/H1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/animation/Animator;)V
    .locals 1

    const/16 v0, 0xd

    iput v0, p0, Lo/H1;->a:I

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lo/H1;->b:Ljava/lang/Object;

    .line 86
    iput-object p1, p0, Lo/H1;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x5

    iput v0, p0, Lo/H1;->a:I

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-class v0, Lo/Va;

    .line 53
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0302f3

    .line 54
    invoke-static {p1, v1, v0}, Lo/Ha;->q0(Landroid/content/Context;ILjava/lang/String;)Landroid/util/TypedValue;

    move-result-object v0

    iget v0, v0, Landroid/util/TypedValue;->data:I

    .line 55
    sget-object v1, Lo/fd;->l:[I

    .line 56
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 57
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 58
    invoke-static {p1, v1}, Lo/u6;->b(Landroid/content/Context;I)Lo/u6;

    const/4 v1, 0x2

    .line 59
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 60
    invoke-static {p1, v1}, Lo/u6;->b(Landroid/content/Context;I)Lo/u6;

    const/4 v1, 0x3

    .line 61
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 62
    invoke-static {p1, v1}, Lo/u6;->b(Landroid/content/Context;I)Lo/u6;

    const/4 v1, 0x5

    .line 63
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 64
    invoke-static {p1, v1}, Lo/u6;->b(Landroid/content/Context;I)Lo/u6;

    const/4 v1, 0x7

    .line 65
    invoke-static {p1, v0, v1}, Lo/Ha;->F(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    const/16 v3, 0x9

    .line 66
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 67
    invoke-static {p1, v3}, Lo/u6;->b(Landroid/content/Context;I)Lo/u6;

    move-result-object v3

    iput-object v3, p0, Lo/H1;->b:Ljava/lang/Object;

    const/16 v3, 0x8

    .line 68
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 69
    invoke-static {p1, v3}, Lo/u6;->b(Landroid/content/Context;I)Lo/u6;

    const/16 v3, 0xa

    .line 70
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 71
    invoke-static {p1, v2}, Lo/u6;->b(Landroid/content/Context;I)Lo/u6;

    move-result-object p1

    iput-object p1, p0, Lo/H1;->c:Ljava/lang/Object;

    .line 72
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 73
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 74
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/view/animation/Animation;)V
    .locals 1

    const/16 v0, 0xd

    iput v0, p0, Lo/H1;->a:I

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lo/H1;->b:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 83
    iput-object p1, p0, Lo/H1;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/widget/AbsSeekBar;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lo/H1;->a:I

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lo/H1;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/widget/EditText;I)V
    .locals 4

    const/4 v0, 0x0

    iput p2, p0, Lo/H1;->a:I

    packed-switch p2, :pswitch_data_0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lo/H1;->b:Ljava/lang/Object;

    .line 32
    new-instance p2, Lo/C;

    invoke-direct {p2, p1}, Lo/C;-><init>(Landroid/widget/EditText;)V

    iput-object p2, p0, Lo/H1;->c:Ljava/lang/Object;

    return-void

    .line 33
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lo/H1;->b:Ljava/lang/Object;

    .line 35
    new-instance p2, Lo/R6;

    invoke-direct {p2, p1}, Lo/R6;-><init>(Landroid/widget/EditText;)V

    iput-object p2, p0, Lo/H1;->c:Ljava/lang/Object;

    .line 36
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 37
    sget-object p2, Lo/G6;->b:Lo/G6;

    if-nez p2, :cond_1

    .line 38
    sget-object p2, Lo/G6;->a:Ljava/lang/Object;

    monitor-enter p2

    .line 39
    :try_start_0
    sget-object v1, Lo/G6;->b:Lo/G6;

    if-nez v1, :cond_0

    .line 40
    new-instance v1, Lo/G6;

    .line 41
    invoke-direct {v1}, Landroid/text/Editable$Factory;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 42
    :try_start_1
    const-string v2, "android.text.DynamicLayout$ChangeWatcher"

    .line 43
    const-class v3, Lo/G6;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v2, v0, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lo/G6;->c:Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    :catchall_0
    :try_start_2
    sput-object v1, Lo/G6;->b:Lo/G6;

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    .line 45
    :cond_0
    :goto_0
    monitor-exit p2

    goto :goto_2

    :goto_1
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    .line 46
    :cond_1
    :goto_2
    sget-object p2, Lo/G6;->b:Lo/G6;

    .line 47
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEditableFactory(Landroid/text/Editable$Factory;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .line 2
    iput p2, p0, Lo/H1;->a:I

    iput-object p1, p0, Lo/H1;->c:Ljava/lang/Object;

    iput-object p3, p0, Lo/H1;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V
    .locals 0

    .line 3
    iput p3, p0, Lo/H1;->a:I

    iput-object p1, p0, Lo/H1;->b:Ljava/lang/Object;

    iput-object p2, p0, Lo/H1;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lo/sf;)V
    .locals 1

    const/16 v0, 0xa

    iput v0, p0, Lo/H1;->a:I

    const-string v0, "input"

    invoke-static {p1, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lo/H1;->b:Ljava/lang/Object;

    .line 109
    iput-object p2, p0, Lo/H1;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4

    const/16 v0, 0xf

    iput v0, p0, Lo/H1;->a:I

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 89
    new-array v1, v0, [I

    iput-object v1, p0, Lo/H1;->b:Ljava/lang/Object;

    .line 90
    new-array v1, v0, [F

    iput-object v1, p0, Lo/H1;->c:Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 91
    iget-object v2, p0, Lo/H1;->b:Ljava/lang/Object;

    check-cast v2, [I

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v1

    .line 92
    iget-object v2, p0, Lo/H1;->c:Ljava/lang/Object;

    check-cast v2, [F

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lo/Qc;)V
    .locals 1

    const/16 v0, 0x12

    iput v0, p0, Lo/H1;->a:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/H1;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lo/R9;Lo/Lh;)V
    .locals 3

    const/16 v0, 0x11

    iput v0, p0, Lo/H1;->a:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lo/H1;->b:Ljava/lang/Object;

    .line 7
    const-string p1, "store"

    invoke-static {p2, p1}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sget-object p1, Lo/e5;->b:Lo/e5;

    .line 9
    const-string v0, "defaultCreationExtras"

    invoke-static {p1, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    const-class v0, Lo/pa;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 11
    const-string v2, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 12
    const-string v2, "key"

    invoke-static {v1, v2}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object p2, p2, Lo/Lh;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/Jh;

    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    const-string p1, "null cannot be cast to non-null type T of androidx.lifecycle.ViewModelProvider.get"

    invoke-static {v2, p1}, Lo/x9;->m(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 16
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 17
    iget-object p1, p1, Lo/f5;->a:Ljava/util/LinkedHashMap;

    .line 18
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 19
    sget-object p1, Lo/u6;->e:Lo/u6;

    .line 20
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    :try_start_0
    new-instance p1, Lo/pa;

    invoke-direct {p1}, Lo/pa;-><init>()V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v2, p1

    goto :goto_1

    .line 22
    :catch_0
    new-instance p1, Lo/pa;

    invoke-direct {p1}, Lo/pa;-><init>()V

    goto :goto_0

    .line 23
    :goto_1
    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/Jh;

    if-eqz p1, :cond_1

    .line 24
    invoke-virtual {p1}, Lo/Jh;->a()V

    .line 25
    :cond_1
    :goto_2
    check-cast v2, Lo/pa;

    .line 26
    iput-object v2, p0, Lo/H1;->c:Ljava/lang/Object;

    return-void

    .line 27
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lo/i8;)V
    .locals 1

    const/16 v0, 0xe

    iput v0, p0, Lo/H1;->a:I

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lo/H1;->b:Ljava/lang/Object;

    .line 50
    iput-object p1, p0, Lo/H1;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lo/sd;)V
    .locals 1

    const/16 v0, 0x14

    iput v0, p0, Lo/H1;->a:I

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lo/H1;->b:Ljava/lang/Object;

    .line 77
    new-instance p1, Lo/ph;

    .line 78
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 79
    iput v0, p1, Lo/ph;->a:I

    .line 80
    iput-object p1, p0, Lo/H1;->c:Ljava/lang/Object;

    return-void
.end method

.method public static v(Lo/R9;)Lo/H1;
    .locals 2

    .line 1
    new-instance v0, Lo/H1;

    .line 3
    move-object v1, p0

    .line 4
    check-cast v1, Lo/Mh;

    .line 6
    invoke-interface {v1}, Lo/Mh;->d()Lo/Lh;

    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, p0, v1}, Lo/H1;-><init>(Lo/R9;Lo/Lh;)V

    .line 13
    return-object v0
.end method

.method public static y(II)I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    move v2, v1

    .line 4
    move v3, v2

    .line 5
    :goto_0
    const/4 v4, 0x1

    .line 6
    if-ge v1, p0, :cond_2

    .line 8
    add-int/lit8 v2, v2, 0x1

    .line 10
    if-ne v2, p1, :cond_0

    .line 12
    add-int/lit8 v3, v3, 0x1

    .line 14
    move v2, v0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    if-le v2, p1, :cond_1

    .line 18
    add-int/lit8 v3, v3, 0x1

    .line 20
    move v2, v4

    .line 21
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_2
    add-int/2addr v2, v4

    .line 25
    if-le v2, p1, :cond_3

    .line 27
    add-int/lit8 v3, v3, 0x1

    .line 29
    :cond_3
    return v3
.end method


# virtual methods
.method public A(Landroid/view/View;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lo/H1;->b:Ljava/lang/Object;

    .line 3
    check-cast v0, Lo/sd;

    .line 5
    invoke-virtual {v0}, Lo/sd;->d()I

    .line 8
    move-result v1

    .line 9
    invoke-virtual {v0}, Lo/sd;->c()I

    .line 12
    move-result v2

    .line 13
    invoke-virtual {v0, p1}, Lo/sd;->b(Landroid/view/View;)I

    .line 16
    move-result v3

    .line 17
    invoke-virtual {v0, p1}, Lo/sd;->a(Landroid/view/View;)I

    .line 20
    move-result p1

    .line 21
    iget-object v0, p0, Lo/H1;->c:Ljava/lang/Object;

    .line 23
    check-cast v0, Lo/ph;

    .line 25
    iput v1, v0, Lo/ph;->b:I

    .line 27
    iput v2, v0, Lo/ph;->c:I

    .line 29
    iput v3, v0, Lo/ph;->d:I

    .line 31
    iput p1, v0, Lo/ph;->e:I

    .line 33
    const/16 p1, 0x6003

    .line 35
    iput p1, v0, Lo/ph;->a:I

    .line 37
    invoke-virtual {v0}, Lo/ph;->a()Z

    .line 40
    move-result p1

    .line 41
    return p1
.end method

.method public B(Landroid/util/AttributeSet;I)V
    .locals 8

    .line 1
    iget v0, p0, Lo/H1;->a:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lo/H1;->b:Ljava/lang/Object;

    .line 8
    check-cast v0, Landroid/widget/EditText;

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 13
    move-result-object v0

    .line 14
    sget-object v1, Lo/gd;->i:[I

    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 20
    move-result-object p1

    .line 21
    const/16 p2, 0xe

    .line 23
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 26
    move-result v0

    .line 27
    const/4 v1, 0x1

    .line 28
    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 33
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p2

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 40
    invoke-virtual {p0, v1}, Lo/H1;->M(Z)V

    .line 43
    return-void

    .line 44
    :goto_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 47
    throw p2

    .line 48
    :pswitch_0
    iget-object v0, p0, Lo/H1;->b:Ljava/lang/Object;

    .line 50
    check-cast v0, Landroid/widget/AbsSeekBar;

    .line 52
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 55
    move-result-object v1

    .line 56
    sget-object v2, Lo/H1;->d:[I

    .line 58
    invoke-static {v1, p1, v2, p2}, Lo/s2;->y(Landroid/content/Context;Landroid/util/AttributeSet;[II)Lo/s2;

    .line 61
    move-result-object p1

    .line 62
    const/4 p2, 0x0

    .line 63
    invoke-virtual {p1, p2}, Lo/s2;->p(I)Landroid/graphics/drawable/Drawable;

    .line 66
    move-result-object v1

    .line 67
    const/4 v2, 0x1

    .line 68
    if-eqz v1, :cond_3

    .line 70
    instance-of v3, v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 72
    if-eqz v3, :cond_2

    .line 74
    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 76
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    .line 79
    move-result v3

    .line 80
    new-instance v4, Landroid/graphics/drawable/AnimationDrawable;

    .line 82
    invoke-direct {v4}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 85
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->isOneShot()Z

    .line 88
    move-result v5

    .line 89
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 92
    move v5, p2

    .line 93
    :goto_2
    const/16 v6, 0x2710

    .line 95
    if-ge v5, v3, :cond_1

    .line 97
    invoke-virtual {v1, v5}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    .line 100
    move-result-object v7

    .line 101
    invoke-virtual {p0, v7, v2}, Lo/H1;->N(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    .line 104
    move-result-object v7

    .line 105
    invoke-virtual {v7, v6}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 108
    invoke-virtual {v1, v5}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    .line 111
    move-result v6

    .line 112
    invoke-virtual {v4, v7, v6}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 115
    add-int/lit8 v5, v5, 0x1

    .line 117
    goto :goto_2

    .line 118
    :cond_1
    invoke-virtual {v4, v6}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 121
    move-object v1, v4

    .line 122
    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 125
    :cond_3
    invoke-virtual {p1, v2}, Lo/s2;->p(I)Landroid/graphics/drawable/Drawable;

    .line 128
    move-result-object v1

    .line 129
    if-eqz v1, :cond_4

    .line 131
    invoke-virtual {p0, v1, p2}, Lo/H1;->N(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    .line 134
    move-result-object p2

    .line 135
    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 138
    :cond_4
    invoke-virtual {p1}, Lo/s2;->A()V

    .line 141
    return-void

    nop

    .line 143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public C(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lo/H1;->b:Ljava/lang/Object;

    .line 3
    check-cast v0, [I

    .line 5
    if-eqz v0, :cond_3

    .line 7
    array-length v0, v0

    .line 8
    if-lt p1, v0, :cond_0

    .line 10
    goto :goto_2

    .line 11
    :cond_0
    add-int v0, p1, p2

    .line 13
    invoke-virtual {p0, v0}, Lo/H1;->s(I)V

    .line 16
    iget-object v1, p0, Lo/H1;->b:Ljava/lang/Object;

    .line 18
    check-cast v1, [I

    .line 20
    array-length v2, v1

    .line 21
    sub-int/2addr v2, p1

    .line 22
    sub-int/2addr v2, p2

    .line 23
    invoke-static {v1, p1, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    iget-object v1, p0, Lo/H1;->b:Ljava/lang/Object;

    .line 28
    check-cast v1, [I

    .line 30
    const/4 v2, -0x1

    .line 31
    invoke-static {v1, p1, v0, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 34
    iget-object v0, p0, Lo/H1;->c:Ljava/lang/Object;

    .line 36
    check-cast v0, Ljava/util/ArrayList;

    .line 38
    if-nez v0, :cond_1

    .line 40
    goto :goto_2

    .line 41
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 44
    move-result v0

    .line 45
    add-int/lit8 v0, v0, -0x1

    .line 47
    :goto_0
    if-ltz v0, :cond_3

    .line 49
    iget-object v1, p0, Lo/H1;->c:Ljava/lang/Object;

    .line 51
    check-cast v1, Ljava/util/ArrayList;

    .line 53
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Lo/ef;

    .line 59
    iget v2, v1, Lo/ef;->a:I

    .line 61
    if-ge v2, p1, :cond_2

    .line 63
    goto :goto_1

    .line 64
    :cond_2
    add-int/2addr v2, p2

    .line 65
    iput v2, v1, Lo/ef;->a:I

    .line 67
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 69
    goto :goto_0

    .line 70
    :cond_3
    :goto_2
    return-void
.end method

.method public D(II)V
    .locals 5

    .line 1
    iget-object v0, p0, Lo/H1;->b:Ljava/lang/Object;

    .line 3
    check-cast v0, [I

    .line 5
    if-eqz v0, :cond_4

    .line 7
    array-length v0, v0

    .line 8
    if-lt p1, v0, :cond_0

    .line 10
    goto :goto_2

    .line 11
    :cond_0
    add-int v0, p1, p2

    .line 13
    invoke-virtual {p0, v0}, Lo/H1;->s(I)V

    .line 16
    iget-object v1, p0, Lo/H1;->b:Ljava/lang/Object;

    .line 18
    check-cast v1, [I

    .line 20
    array-length v2, v1

    .line 21
    sub-int/2addr v2, p1

    .line 22
    sub-int/2addr v2, p2

    .line 23
    invoke-static {v1, v0, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    iget-object v1, p0, Lo/H1;->b:Ljava/lang/Object;

    .line 28
    check-cast v1, [I

    .line 30
    array-length v2, v1

    .line 31
    sub-int/2addr v2, p2

    .line 32
    array-length v3, v1

    .line 33
    const/4 v4, -0x1

    .line 34
    invoke-static {v1, v2, v3, v4}, Ljava/util/Arrays;->fill([IIII)V

    .line 37
    iget-object v1, p0, Lo/H1;->c:Ljava/lang/Object;

    .line 39
    check-cast v1, Ljava/util/ArrayList;

    .line 41
    if-nez v1, :cond_1

    .line 43
    goto :goto_2

    .line 44
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 47
    move-result v1

    .line 48
    add-int/lit8 v1, v1, -0x1

    .line 50
    :goto_0
    if-ltz v1, :cond_4

    .line 52
    iget-object v2, p0, Lo/H1;->c:Ljava/lang/Object;

    .line 54
    check-cast v2, Ljava/util/ArrayList;

    .line 56
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 59
    move-result-object v2

    .line 60
    check-cast v2, Lo/ef;

    .line 62
    iget v3, v2, Lo/ef;->a:I

    .line 64
    if-ge v3, p1, :cond_2

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    if-ge v3, v0, :cond_3

    .line 69
    iget-object v2, p0, Lo/H1;->c:Ljava/lang/Object;

    .line 71
    check-cast v2, Ljava/util/ArrayList;

    .line 73
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 76
    goto :goto_1

    .line 77
    :cond_3
    sub-int/2addr v3, p2

    .line 78
    iput v3, v2, Lo/ef;->a:I

    .line 80
    :goto_1
    add-int/lit8 v1, v1, -0x1

    .line 82
    goto :goto_0

    .line 83
    :cond_4
    :goto_2
    return-void
.end method

.method public E(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)Lo/I6;
    .locals 2

    .line 1
    iget-object v0, p0, Lo/H1;->c:Ljava/lang/Object;

    .line 3
    check-cast v0, Lo/C;

    .line 5
    if-nez p1, :cond_0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    const/4 p1, 0x0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, v0, Lo/C;->b:Ljava/lang/Object;

    .line 14
    check-cast v0, Lo/H1;

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    instance-of v1, p1, Lo/I6;

    .line 21
    if-eqz v1, :cond_1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    new-instance v1, Lo/I6;

    .line 26
    iget-object v0, v0, Lo/H1;->b:Ljava/lang/Object;

    .line 28
    check-cast v0, Landroid/widget/EditText;

    .line 30
    invoke-direct {v1, v0, p1, p2}, Lo/I6;-><init>(Landroid/widget/EditText;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V

    .line 33
    move-object p1, v1

    .line 34
    :goto_0
    check-cast p1, Lo/I6;

    .line 36
    return-object p1
.end method

.method public F(Lo/h0;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lo/H1;->b:Ljava/lang/Object;

    .line 3
    check-cast v0, Lo/H5;

    .line 5
    invoke-virtual {v0, p1}, Lo/H5;->e(Lo/h0;)Lo/wf;

    .line 8
    move-result-object p1

    .line 9
    iget-object v0, v0, Lo/H5;->a:Ljava/lang/Object;

    .line 11
    check-cast v0, Landroid/view/ActionMode$Callback;

    .line 13
    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 16
    iget-object p1, p0, Lo/H1;->c:Ljava/lang/Object;

    .line 18
    check-cast p1, Lo/v1;

    .line 20
    iget-object v0, p1, Lo/v1;->w:Landroid/widget/PopupWindow;

    .line 22
    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p1, Lo/v1;->l:Landroid/view/Window;

    .line 26
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 29
    move-result-object v0

    .line 30
    iget-object v1, p1, Lo/v1;->x:Lo/i1;

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 35
    :cond_0
    iget-object v0, p1, Lo/v1;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 37
    if-eqz v0, :cond_2

    .line 39
    iget-object v0, p1, Lo/v1;->y:Lo/Ph;

    .line 41
    if-eqz v0, :cond_1

    .line 43
    invoke-virtual {v0}, Lo/Ph;->b()V

    .line 46
    :cond_1
    iget-object v0, p1, Lo/v1;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 48
    invoke-static {v0}, Lo/Dh;->a(Landroid/view/View;)Lo/Ph;

    .line 51
    move-result-object v0

    .line 52
    const/4 v1, 0x0

    .line 53
    invoke-virtual {v0, v1}, Lo/Ph;->a(F)V

    .line 56
    iput-object v0, p1, Lo/v1;->y:Lo/Ph;

    .line 58
    new-instance v1, Lo/k1;

    .line 60
    const/4 v2, 0x2

    .line 61
    invoke-direct {v1, v2, p0}, Lo/k1;-><init>(ILjava/lang/Object;)V

    .line 64
    invoke-virtual {v0, v1}, Lo/Ph;->d(Lo/Rh;)V

    .line 67
    :cond_2
    const/4 v0, 0x0

    .line 68
    iput-object v0, p1, Lo/v1;->u:Lo/h0;

    .line 70
    iget-object v0, p1, Lo/v1;->A:Landroid/view/ViewGroup;

    .line 72
    sget-object v1, Lo/Dh;->a:Ljava/util/WeakHashMap;

    .line 74
    invoke-static {v0}, Lo/th;->c(Landroid/view/View;)V

    .line 77
    invoke-virtual {p1}, Lo/v1;->H()V

    .line 80
    return-void
.end method

.method public G(Lo/h0;Lo/kb;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lo/H1;->c:Ljava/lang/Object;

    .line 3
    check-cast v0, Lo/v1;

    .line 5
    iget-object v0, v0, Lo/v1;->A:Landroid/view/ViewGroup;

    .line 7
    sget-object v1, Lo/Dh;->a:Ljava/util/WeakHashMap;

    .line 9
    invoke-static {v0}, Lo/th;->c(Landroid/view/View;)V

    .line 12
    iget-object v0, p0, Lo/H1;->b:Ljava/lang/Object;

    .line 14
    check-cast v0, Lo/H5;

    .line 16
    invoke-virtual {v0, p1}, Lo/H5;->e(Lo/h0;)Lo/wf;

    .line 19
    move-result-object p1

    .line 20
    iget-object v1, v0, Lo/H5;->d:Ljava/lang/Object;

    .line 22
    check-cast v1, Lo/Qe;

    .line 24
    invoke-virtual {v1, p2}, Lo/Qe;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Landroid/view/Menu;

    .line 30
    if-nez v2, :cond_0

    .line 32
    new-instance v2, Lo/Db;

    .line 34
    iget-object v3, v0, Lo/H5;->b:Ljava/lang/Object;

    .line 36
    check-cast v3, Landroid/content/Context;

    .line 38
    invoke-direct {v2, v3, p2}, Lo/Db;-><init>(Landroid/content/Context;Lo/kb;)V

    .line 41
    invoke-virtual {v1, p2, v2}, Lo/Qe;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :cond_0
    iget-object p2, v0, Lo/H5;->a:Ljava/lang/Object;

    .line 46
    check-cast p2, Landroid/view/ActionMode$Callback;

    .line 48
    invoke-interface {p2, p1, v2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 51
    move-result p1

    .line 52
    return p1
.end method

.method public H(Lo/F7;)V
    .locals 4

    .line 1
    iget v0, p1, Lo/F7;->b:I

    .line 3
    iget-object v1, p0, Lo/H1;->c:Ljava/lang/Object;

    .line 5
    check-cast v1, Lo/Ud;

    .line 7
    iget-object v2, p0, Lo/H1;->b:Ljava/lang/Object;

    .line 9
    check-cast v2, Lo/C;

    .line 11
    if-nez v0, :cond_0

    .line 13
    new-instance v0, Lo/b0;

    .line 15
    iget-object p1, p1, Lo/F7;->a:Landroid/graphics/Typeface;

    .line 17
    const/4 v3, 0x4

    .line 18
    invoke-direct {v0, v2, v3, p1}, Lo/b0;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 21
    invoke-virtual {v1, v0}, Lo/Ud;->execute(Ljava/lang/Runnable;)V

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance p1, Lo/T2;

    .line 27
    const/4 v3, 0x1

    .line 28
    invoke-direct {p1, v2, v0, v3}, Lo/T2;-><init>(Ljava/lang/Object;II)V

    .line 31
    invoke-virtual {v1, p1}, Lo/Ud;->execute(Ljava/lang/Runnable;)V

    .line 34
    :goto_0
    return-void
.end method

.method public I(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    .locals 13

    .line 1
    new-instance v0, Lo/K4;

    .line 3
    invoke-direct {v0}, Lo/K4;-><init>()V

    .line 6
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    move v3, v2

    .line 12
    :goto_0
    if-ge v3, v1, :cond_11

    .line 14
    invoke-interface {p2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    .line 17
    move-result-object v4

    .line 18
    invoke-interface {p2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    .line 21
    move-result-object v5

    .line 22
    if-eqz v4, :cond_10

    .line 24
    if-nez v5, :cond_0

    .line 26
    goto/16 :goto_c

    .line 28
    :cond_0
    const-string v6, "id"

    .line 30
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_10

    .line 36
    const-string v1, "/"

    .line 38
    invoke-virtual {v5, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 41
    move-result v1

    .line 42
    const/4 v3, 0x1

    .line 43
    const/4 v4, -0x1

    .line 44
    if-eqz v1, :cond_1

    .line 46
    const/16 v1, 0x2f

    .line 48
    invoke-virtual {v5, v1}, Ljava/lang/String;->indexOf(I)I

    .line 51
    move-result v1

    .line 52
    add-int/2addr v1, v3

    .line 53
    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 60
    move-result-object v7

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 64
    move-result-object v8

    .line 65
    invoke-virtual {v7, v1, v6, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    move-result v1

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    move v1, v4

    .line 71
    :goto_1
    if-ne v1, v4, :cond_3

    .line 73
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 76
    move-result v6

    .line 77
    if-le v6, v3, :cond_2

    .line 79
    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 82
    move-result-object v1

    .line 83
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 86
    move-result v1

    .line 87
    goto :goto_2

    .line 88
    :cond_2
    const-string v5, "ConstraintLayoutStates"

    .line 90
    const-string v6, "error in parsing id"

    .line 92
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_3
    :goto_2
    const-string v5, "Error parsing XML resource"

    .line 97
    const-string v6, "ConstraintSet"

    .line 99
    :try_start_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 102
    move-result v7

    .line 103
    const/4 v8, 0x0

    .line 104
    move-object v9, v8

    .line 105
    :goto_3
    if-eq v7, v3, :cond_f

    .line 107
    if-eqz v7, :cond_e

    .line 109
    const/4 v10, 0x3

    .line 110
    const/4 v11, 0x2

    .line 111
    if-eq v7, v11, :cond_7

    .line 113
    if-eq v7, v10, :cond_4

    .line 115
    goto/16 :goto_8

    .line 117
    :cond_4
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 120
    move-result-object v7

    .line 121
    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 123
    invoke-virtual {v7, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 126
    move-result-object v7

    .line 127
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    .line 130
    move-result v12

    .line 131
    sparse-switch v12, :sswitch_data_0

    .line 134
    goto :goto_4

    .line 135
    :sswitch_0
    const-string v12, "constraintset"

    .line 137
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    move-result v7

    .line 141
    if-eqz v7, :cond_5

    .line 143
    move v7, v2

    .line 144
    goto :goto_5

    .line 145
    :catch_0
    move-exception p1

    .line 146
    goto/16 :goto_9

    .line 148
    :catch_1
    move-exception p1

    .line 149
    goto/16 :goto_a

    .line 151
    :sswitch_1
    const-string v12, "constraintoverride"

    .line 153
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    move-result v7

    .line 157
    if-eqz v7, :cond_5

    .line 159
    move v7, v11

    .line 160
    goto :goto_5

    .line 161
    :sswitch_2
    const-string v12, "constraint"

    .line 163
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    move-result v7

    .line 167
    if-eqz v7, :cond_5

    .line 169
    move v7, v3

    .line 170
    goto :goto_5

    .line 171
    :sswitch_3
    const-string v12, "guideline"

    .line 173
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 176
    move-result v7

    .line 177
    if-eqz v7, :cond_5

    .line 179
    move v7, v10

    .line 180
    goto :goto_5

    .line 181
    :cond_5
    :goto_4
    move v7, v4

    .line 182
    :goto_5
    if-eqz v7, :cond_f

    .line 184
    if-eq v7, v3, :cond_6

    .line 186
    if-eq v7, v11, :cond_6

    .line 188
    if-eq v7, v10, :cond_6

    .line 190
    goto/16 :goto_8

    .line 192
    :cond_6
    iget-object v7, v0, Lo/K4;->c:Ljava/util/HashMap;

    .line 194
    iget v10, v9, Lo/F4;->a:I

    .line 196
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 199
    move-result-object v10

    .line 200
    invoke-virtual {v7, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    move-object v9, v8

    .line 204
    goto/16 :goto_8

    .line 206
    :cond_7
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 209
    move-result-object v7

    .line 210
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    .line 213
    move-result v12

    .line 214
    sparse-switch v12, :sswitch_data_1

    .line 217
    goto/16 :goto_6

    .line 219
    :sswitch_4
    const-string v10, "Constraint"

    .line 221
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 224
    move-result v7

    .line 225
    if-eqz v7, :cond_8

    .line 227
    move v10, v2

    .line 228
    goto/16 :goto_7

    .line 230
    :sswitch_5
    const-string v10, "CustomAttribute"

    .line 232
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 235
    move-result v7

    .line 236
    if-eqz v7, :cond_8

    .line 238
    const/16 v10, 0x8

    .line 240
    goto :goto_7

    .line 241
    :sswitch_6
    const-string v11, "Barrier"

    .line 243
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 246
    move-result v7

    .line 247
    if-eqz v7, :cond_8

    .line 249
    goto :goto_7

    .line 250
    :sswitch_7
    const-string v10, "CustomMethod"

    .line 252
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 255
    move-result v7

    .line 256
    if-eqz v7, :cond_8

    .line 258
    const/16 v10, 0x9

    .line 260
    goto :goto_7

    .line 261
    :sswitch_8
    const-string v10, "Guideline"

    .line 263
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 266
    move-result v7

    .line 267
    if-eqz v7, :cond_8

    .line 269
    move v10, v11

    .line 270
    goto :goto_7

    .line 271
    :sswitch_9
    const-string v10, "Transform"

    .line 273
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 276
    move-result v7

    .line 277
    if-eqz v7, :cond_8

    .line 279
    const/4 v10, 0x5

    .line 280
    goto :goto_7

    .line 281
    :sswitch_a
    const-string v10, "PropertySet"

    .line 283
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 286
    move-result v7

    .line 287
    if-eqz v7, :cond_8

    .line 289
    const/4 v10, 0x4

    .line 290
    goto :goto_7

    .line 291
    :sswitch_b
    const-string v10, "ConstraintOverride"

    .line 293
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 296
    move-result v7

    .line 297
    if-eqz v7, :cond_8

    .line 299
    move v10, v3

    .line 300
    goto :goto_7

    .line 301
    :sswitch_c
    const-string v10, "Motion"

    .line 303
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 306
    move-result v7

    .line 307
    if-eqz v7, :cond_8

    .line 309
    const/4 v10, 0x7

    .line 310
    goto :goto_7

    .line 311
    :sswitch_d
    const-string v10, "Layout"

    .line 313
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 316
    move-result v7
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    if-eqz v7, :cond_8

    .line 319
    const/4 v10, 0x6

    .line 320
    goto :goto_7

    .line 321
    :cond_8
    :goto_6
    move v10, v4

    .line 322
    :goto_7
    const-string v7, "XML parser error must be within a Constraint "

    .line 324
    packed-switch v10, :pswitch_data_0

    .line 327
    goto/16 :goto_8

    .line 329
    :pswitch_0
    if-eqz v9, :cond_9

    .line 331
    :try_start_1
    iget-object v7, v9, Lo/F4;->f:Ljava/util/HashMap;

    .line 333
    invoke-static {p1, p2, v7}, Lo/y4;->a(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/util/HashMap;)V

    .line 336
    goto/16 :goto_8

    .line 338
    :cond_9
    new-instance p1, Ljava/lang/RuntimeException;

    .line 340
    new-instance v2, Ljava/lang/StringBuilder;

    .line 342
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 345
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    .line 351
    move-result p2

    .line 352
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 355
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 358
    move-result-object p2

    .line 359
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 362
    throw p1

    .line 363
    :pswitch_1
    if-eqz v9, :cond_a

    .line 365
    iget-object v7, v9, Lo/F4;->c:Lo/H4;

    .line 367
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 370
    move-result-object v10

    .line 371
    invoke-virtual {v7, p1, v10}, Lo/H4;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 374
    goto/16 :goto_8

    .line 376
    :cond_a
    new-instance p1, Ljava/lang/RuntimeException;

    .line 378
    new-instance v2, Ljava/lang/StringBuilder;

    .line 380
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 383
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    .line 389
    move-result p2

    .line 390
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 393
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 396
    move-result-object p2

    .line 397
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 400
    throw p1

    .line 401
    :pswitch_2
    if-eqz v9, :cond_b

    .line 403
    iget-object v7, v9, Lo/F4;->d:Lo/G4;

    .line 405
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 408
    move-result-object v10

    .line 409
    invoke-virtual {v7, p1, v10}, Lo/G4;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 412
    goto/16 :goto_8

    .line 414
    :cond_b
    new-instance p1, Ljava/lang/RuntimeException;

    .line 416
    new-instance v2, Ljava/lang/StringBuilder;

    .line 418
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 421
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    .line 427
    move-result p2

    .line 428
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 431
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 434
    move-result-object p2

    .line 435
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 438
    throw p1

    .line 439
    :pswitch_3
    if-eqz v9, :cond_c

    .line 441
    iget-object v7, v9, Lo/F4;->e:Lo/J4;

    .line 443
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 446
    move-result-object v10

    .line 447
    invoke-virtual {v7, p1, v10}, Lo/J4;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 450
    goto :goto_8

    .line 451
    :cond_c
    new-instance p1, Ljava/lang/RuntimeException;

    .line 453
    new-instance v2, Ljava/lang/StringBuilder;

    .line 455
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 458
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    .line 464
    move-result p2

    .line 465
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 468
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 471
    move-result-object p2

    .line 472
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 475
    throw p1

    .line 476
    :pswitch_4
    if-eqz v9, :cond_d

    .line 478
    iget-object v7, v9, Lo/F4;->b:Lo/I4;

    .line 480
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 483
    move-result-object v10

    .line 484
    invoke-virtual {v7, p1, v10}, Lo/I4;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 487
    goto :goto_8

    .line 488
    :cond_d
    new-instance p1, Ljava/lang/RuntimeException;

    .line 490
    new-instance v2, Ljava/lang/StringBuilder;

    .line 492
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 495
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    .line 501
    move-result p2

    .line 502
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 505
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 508
    move-result-object p2

    .line 509
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 512
    throw p1

    .line 513
    :pswitch_5
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 516
    move-result-object v7

    .line 517
    invoke-static {p1, v7, v2}, Lo/K4;->d(Landroid/content/Context;Landroid/util/AttributeSet;Z)Lo/F4;

    .line 520
    move-result-object v9

    .line 521
    iget-object v7, v9, Lo/F4;->d:Lo/G4;

    .line 523
    iput v3, v7, Lo/G4;->h0:I

    .line 525
    goto :goto_8

    .line 526
    :pswitch_6
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 529
    move-result-object v7

    .line 530
    invoke-static {p1, v7, v2}, Lo/K4;->d(Landroid/content/Context;Landroid/util/AttributeSet;Z)Lo/F4;

    .line 533
    move-result-object v9

    .line 534
    iget-object v7, v9, Lo/F4;->d:Lo/G4;

    .line 536
    iput-boolean v3, v7, Lo/G4;->a:Z

    .line 538
    goto :goto_8

    .line 539
    :pswitch_7
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 542
    move-result-object v7

    .line 543
    invoke-static {p1, v7, v3}, Lo/K4;->d(Landroid/content/Context;Landroid/util/AttributeSet;Z)Lo/F4;

    .line 546
    move-result-object v9

    .line 547
    goto :goto_8

    .line 548
    :pswitch_8
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 551
    move-result-object v7

    .line 552
    invoke-static {p1, v7, v2}, Lo/K4;->d(Landroid/content/Context;Landroid/util/AttributeSet;Z)Lo/F4;

    .line 555
    move-result-object v9

    .line 556
    goto :goto_8

    .line 557
    :cond_e
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 560
    :goto_8
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 563
    move-result v7
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 564
    goto/16 :goto_3

    .line 566
    :goto_9
    invoke-static {v6, v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 569
    goto :goto_b

    .line 570
    :goto_a
    invoke-static {v6, v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 573
    :cond_f
    :goto_b
    iget-object p1, p0, Lo/H1;->c:Ljava/lang/Object;

    .line 575
    check-cast p1, Landroid/util/SparseArray;

    .line 577
    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 580
    goto :goto_d

    .line 581
    :cond_10
    :goto_c
    add-int/lit8 v3, v3, 0x1

    .line 583
    goto/16 :goto_0

    .line 585
    :cond_11
    :goto_d
    return-void

    nop

    .line 587
    :sswitch_data_0
    .sparse-switch
        -0x7bb8f310 -> :sswitch_3
        -0xb58ea23 -> :sswitch_2
        0x196d04a9 -> :sswitch_1
        0x7feafd65 -> :sswitch_0
    .end sparse-switch

    .line 605
    :sswitch_data_1
    .sparse-switch
        -0x78c018b6 -> :sswitch_d
        -0x7648542a -> :sswitch_c
        -0x74f4db17 -> :sswitch_b
        -0x4bab3dd3 -> :sswitch_a
        -0x49cf74b4 -> :sswitch_9
        -0x446d330 -> :sswitch_8
        0x15d883d2 -> :sswitch_7
        0x4f5d3b97 -> :sswitch_6
        0x6acd460b -> :sswitch_5
        0x6b78f1fd -> :sswitch_4
    .end sparse-switch

    .line 647
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public J(Lo/Id;I)Lo/Wb;
    .locals 5

    .line 1
    iget-object v0, p0, Lo/H1;->b:Ljava/lang/Object;

    .line 3
    check-cast v0, Lo/Qe;

    .line 5
    invoke-virtual {v0, p1}, Lo/Qe;->d(Ljava/lang/Object;)I

    .line 8
    move-result p1

    .line 9
    const/4 v1, 0x0

    .line 10
    if-gez p1, :cond_0

    .line 12
    return-object v1

    .line 13
    :cond_0
    invoke-virtual {v0, p1}, Lo/Qe;->i(I)Ljava/lang/Object;

    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lo/Ih;

    .line 19
    if-eqz v2, :cond_4

    .line 21
    iget v3, v2, Lo/Ih;->a:I

    .line 23
    and-int v4, v3, p2

    .line 25
    if-eqz v4, :cond_4

    .line 27
    not-int v4, p2

    .line 28
    and-int/2addr v3, v4

    .line 29
    iput v3, v2, Lo/Ih;->a:I

    .line 31
    const/4 v4, 0x4

    .line 32
    if-ne p2, v4, :cond_1

    .line 34
    iget-object p2, v2, Lo/Ih;->b:Lo/Wb;

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/16 v4, 0x8

    .line 39
    if-ne p2, v4, :cond_3

    .line 41
    iget-object p2, v2, Lo/Ih;->c:Lo/Wb;

    .line 43
    :goto_0
    and-int/lit8 v3, v3, 0xc

    .line 45
    if-nez v3, :cond_2

    .line 47
    invoke-virtual {v0, p1}, Lo/Qe;->g(I)Ljava/lang/Object;

    .line 50
    const/4 p1, 0x0

    .line 51
    iput p1, v2, Lo/Ih;->a:I

    .line 53
    iput-object v1, v2, Lo/Ih;->b:Lo/Wb;

    .line 55
    iput-object v1, v2, Lo/Ih;->c:Lo/Wb;

    .line 57
    sget-object p1, Lo/Ih;->d:Lo/Jc;

    .line 59
    invoke-virtual {p1, v2}, Lo/Jc;->c(Ljava/lang/Object;)Z

    .line 62
    :cond_2
    return-object p2

    .line 63
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 65
    const-string p2, "Must provide flag PRE or POST"

    .line 67
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 70
    throw p1

    .line 71
    :cond_4
    return-object v1
.end method

.method public K(Lo/Id;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/H1;->b:Ljava/lang/Object;

    .line 3
    check-cast v0, Lo/Qe;

    .line 5
    invoke-virtual {v0, p1}, Lo/Qe;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lo/Ih;

    .line 11
    if-nez p1, :cond_0

    .line 13
    return-void

    .line 14
    :cond_0
    iget v0, p1, Lo/Ih;->a:I

    .line 16
    and-int/lit8 v0, v0, -0x2

    .line 18
    iput v0, p1, Lo/Ih;->a:I

    .line 20
    return-void
.end method

.method public L(Lo/Id;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lo/H1;->c:Ljava/lang/Object;

    .line 3
    check-cast v0, Lo/za;

    .line 5
    invoke-virtual {v0}, Lo/za;->e()I

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    sub-int/2addr v1, v2

    .line 11
    :goto_0
    if-ltz v1, :cond_1

    .line 13
    invoke-virtual {v0, v1}, Lo/za;->f(I)Ljava/lang/Object;

    .line 16
    move-result-object v3

    .line 17
    if-ne p1, v3, :cond_0

    .line 19
    iget-object v3, v0, Lo/za;->c:[Ljava/lang/Object;

    .line 21
    aget-object v4, v3, v1

    .line 23
    sget-object v5, Lo/x9;->v:Ljava/lang/Object;

    .line 25
    if-eq v4, v5, :cond_1

    .line 27
    aput-object v5, v3, v1

    .line 29
    iput-boolean v2, v0, Lo/za;->a:Z

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    :goto_1
    iget-object v0, p0, Lo/H1;->b:Ljava/lang/Object;

    .line 37
    check-cast v0, Lo/Qe;

    .line 39
    invoke-virtual {v0, p1}, Lo/Qe;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Lo/Ih;

    .line 45
    if-eqz p1, :cond_2

    .line 47
    const/4 v0, 0x0

    .line 48
    iput v0, p1, Lo/Ih;->a:I

    .line 50
    const/4 v0, 0x0

    .line 51
    iput-object v0, p1, Lo/Ih;->b:Lo/Wb;

    .line 53
    iput-object v0, p1, Lo/Ih;->c:Lo/Wb;

    .line 55
    sget-object v0, Lo/Ih;->d:Lo/Jc;

    .line 57
    invoke-virtual {v0, p1}, Lo/Jc;->c(Ljava/lang/Object;)Z

    .line 60
    :cond_2
    return-void
.end method

.method public M(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lo/H1;->c:Ljava/lang/Object;

    .line 3
    check-cast v0, Lo/C;

    .line 5
    iget-object v0, v0, Lo/C;->b:Ljava/lang/Object;

    .line 7
    check-cast v0, Lo/H1;

    .line 9
    iget-object v0, v0, Lo/H1;->c:Ljava/lang/Object;

    .line 11
    check-cast v0, Lo/R6;

    .line 13
    iget-boolean v1, v0, Lo/R6;->c:Z

    .line 15
    if-eq v1, p1, :cond_1

    .line 17
    iget-object v1, v0, Lo/R6;->b:Lo/Q6;

    .line 19
    if-eqz v1, :cond_0

    .line 21
    invoke-static {}, Lo/C6;->a()Lo/C6;

    .line 24
    move-result-object v1

    .line 25
    iget-object v2, v0, Lo/R6;->b:Lo/Q6;

    .line 27
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    const-string v3, "initCallback cannot be null"

    .line 32
    invoke-static {v2, v3}, Lo/Ha;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object v3, v1, Lo/C6;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 37
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 40
    move-result-object v4

    .line 41
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 44
    :try_start_0
    iget-object v1, v1, Lo/C6;->b:Lo/G2;

    .line 46
    invoke-virtual {v1, v2}, Lo/G2;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 52
    move-result-object v1

    .line 53
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception p1

    .line 58
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 61
    move-result-object v0

    .line 62
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 65
    throw p1

    .line 66
    :cond_0
    :goto_0
    iput-boolean p1, v0, Lo/R6;->c:Z

    .line 68
    if-eqz p1, :cond_1

    .line 70
    invoke-static {}, Lo/C6;->a()Lo/C6;

    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p1}, Lo/C6;->b()I

    .line 77
    move-result p1

    .line 78
    iget-object v0, v0, Lo/R6;->a:Landroid/widget/EditText;

    .line 80
    invoke-static {v0, p1}, Lo/R6;->a(Landroid/widget/EditText;I)V

    .line 83
    :cond_1
    return-void
.end method

.method public N(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    instance-of v1, p1, Lo/Si;

    .line 4
    if-eqz v1, :cond_0

    .line 6
    move-object p2, p1

    .line 7
    check-cast p2, Lo/Si;

    .line 9
    check-cast p2, Lo/Ti;

    .line 11
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    goto/16 :goto_4

    .line 16
    :cond_0
    instance-of v1, p1, Landroid/graphics/drawable/LayerDrawable;

    .line 18
    if-eqz v1, :cond_5

    .line 20
    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    .line 22
    invoke-virtual {p1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    .line 25
    move-result p2

    .line 26
    new-array v1, p2, [Landroid/graphics/drawable/Drawable;

    .line 28
    const/4 v2, 0x0

    .line 29
    move v3, v2

    .line 30
    :goto_0
    if-ge v3, p2, :cond_3

    .line 32
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    .line 35
    move-result v4

    .line 36
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 39
    move-result-object v5

    .line 40
    const v6, 0x102000d

    .line 43
    if-eq v4, v6, :cond_2

    .line 45
    const v6, 0x102000f

    .line 48
    if-ne v4, v6, :cond_1

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    move v4, v2

    .line 52
    goto :goto_2

    .line 53
    :cond_2
    :goto_1
    move v4, v0

    .line 54
    :goto_2
    invoke-virtual {p0, v5, v4}, Lo/H1;->N(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    .line 57
    move-result-object v4

    .line 58
    aput-object v4, v1, v3

    .line 60
    add-int/2addr v3, v0

    .line 61
    goto :goto_0

    .line 62
    :cond_3
    new-instance v3, Landroid/graphics/drawable/LayerDrawable;

    .line 64
    invoke-direct {v3, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 67
    :goto_3
    if-ge v2, p2, :cond_4

    .line 69
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    .line 72
    move-result v1

    .line 73
    invoke-virtual {v3, v2, v1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 76
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/LayerDrawable;->getLayerGravity(I)I

    .line 79
    move-result v1

    .line 80
    invoke-virtual {v3, v2, v1}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    .line 83
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/LayerDrawable;->getLayerWidth(I)I

    .line 86
    move-result v1

    .line 87
    invoke-virtual {v3, v2, v1}, Landroid/graphics/drawable/LayerDrawable;->setLayerWidth(II)V

    .line 90
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/LayerDrawable;->getLayerHeight(I)I

    .line 93
    move-result v1

    .line 94
    invoke-virtual {v3, v2, v1}, Landroid/graphics/drawable/LayerDrawable;->setLayerHeight(II)V

    .line 97
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetLeft(I)I

    .line 100
    move-result v1

    .line 101
    invoke-virtual {v3, v2, v1}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetLeft(II)V

    .line 104
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetRight(I)I

    .line 107
    move-result v1

    .line 108
    invoke-virtual {v3, v2, v1}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetRight(II)V

    .line 111
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetTop(I)I

    .line 114
    move-result v1

    .line 115
    invoke-virtual {v3, v2, v1}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetTop(II)V

    .line 118
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetBottom(I)I

    .line 121
    move-result v1

    .line 122
    invoke-virtual {v3, v2, v1}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetBottom(II)V

    .line 125
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetStart(I)I

    .line 128
    move-result v1

    .line 129
    invoke-virtual {v3, v2, v1}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetStart(II)V

    .line 132
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetEnd(I)I

    .line 135
    move-result v1

    .line 136
    invoke-virtual {v3, v2, v1}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetEnd(II)V

    .line 139
    add-int/2addr v2, v0

    .line 140
    goto :goto_3

    .line 141
    :cond_4
    return-object v3

    .line 142
    :cond_5
    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 144
    if-eqz v1, :cond_8

    .line 146
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 148
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 151
    move-result-object v1

    .line 152
    iget-object v2, p0, Lo/H1;->c:Ljava/lang/Object;

    .line 154
    check-cast v2, Landroid/graphics/Bitmap;

    .line 156
    if-nez v2, :cond_6

    .line 158
    iput-object v1, p0, Lo/H1;->c:Ljava/lang/Object;

    .line 160
    :cond_6
    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    .line 162
    const/16 v3, 0x8

    .line 164
    new-array v3, v3, [F

    .line 166
    fill-array-data v3, :array_0

    .line 169
    new-instance v4, Landroid/graphics/drawable/shapes/RoundRectShape;

    .line 171
    const/4 v5, 0x0

    .line 172
    invoke-direct {v4, v3, v5, v5}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 175
    invoke-direct {v2, v4}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 178
    new-instance v3, Landroid/graphics/BitmapShader;

    .line 180
    sget-object v4, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    .line 182
    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 184
    invoke-direct {v3, v1, v4, v5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 187
    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    .line 190
    move-result-object v1

    .line 191
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 194
    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    .line 197
    move-result-object v1

    .line 198
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    .line 201
    move-result-object p1

    .line 202
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    .line 205
    move-result-object p1

    .line 206
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 209
    if-eqz p2, :cond_7

    .line 211
    new-instance p1, Landroid/graphics/drawable/ClipDrawable;

    .line 213
    const/4 p2, 0x3

    .line 214
    invoke-direct {p1, v2, p2, v0}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 217
    move-object v2, p1

    .line 218
    :cond_7
    return-object v2

    .line 219
    :cond_8
    :goto_4
    return-object p1

    nop

    .line 221
    :array_0
    .array-data 4
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data
.end method

.method public a(Lo/Id;Lo/Wb;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo/H1;->b:Ljava/lang/Object;

    .line 3
    check-cast v0, Lo/Qe;

    .line 5
    invoke-virtual {v0, p1}, Lo/Qe;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lo/Ih;

    .line 11
    if-nez v1, :cond_0

    .line 13
    invoke-static {}, Lo/Ih;->a()Lo/Ih;

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, p1, v1}, Lo/Qe;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_0
    iput-object p2, v1, Lo/Ih;->c:Lo/Wb;

    .line 22
    iget p1, v1, Lo/Ih;->a:I

    .line 24
    or-int/lit8 p1, p1, 0x8

    .line 26
    iput p1, v1, Lo/Ih;->a:I

    .line 28
    return-void
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/H1;->b:Ljava/lang/Object;

    .line 3
    check-cast v0, Lo/Wg;

    .line 5
    return-object v0
.end method

.method public c(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo/H1;->c:Ljava/lang/Object;

    .line 3
    check-cast v0, Lo/i8;

    .line 5
    iget-object v0, v0, Lo/i8;->v:Lo/T7;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0}, Lo/T7;->j()Lo/i8;

    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x1

    .line 14
    iget-object v0, v0, Lo/i8;->l:Lo/H1;

    .line 16
    invoke-virtual {v0, v1}, Lo/H1;->c(Z)V

    .line 19
    :cond_0
    iget-object v0, p0, Lo/H1;->b:Ljava/lang/Object;

    .line 21
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 23
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_3

    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 37
    if-nez v0, :cond_2

    .line 39
    const/4 v0, 0x0

    .line 40
    if-eqz p1, :cond_1

    .line 42
    throw v0

    .line 43
    :cond_1
    throw v0

    .line 44
    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    .line 46
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 49
    throw p1

    .line 50
    :cond_3
    return-void
.end method

.method public d(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo/H1;->c:Ljava/lang/Object;

    .line 3
    check-cast v0, Lo/i8;

    .line 5
    iget-object v1, v0, Lo/i8;->t:Lo/V7;

    .line 7
    iget-object v1, v1, Lo/V7;->h:Lo/U0;

    .line 9
    iget-object v0, v0, Lo/i8;->v:Lo/T7;

    .line 11
    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {v0}, Lo/T7;->j()Lo/i8;

    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x1

    .line 18
    iget-object v0, v0, Lo/i8;->l:Lo/H1;

    .line 20
    invoke-virtual {v0, v1}, Lo/H1;->d(Z)V

    .line 23
    :cond_0
    iget-object v0, p0, Lo/H1;->b:Ljava/lang/Object;

    .line 25
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 27
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 30
    move-result-object v0

    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_3

    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    move-result-object v0

    .line 41
    if-nez v0, :cond_2

    .line 43
    const/4 v0, 0x0

    .line 44
    if-eqz p1, :cond_1

    .line 46
    throw v0

    .line 47
    :cond_1
    throw v0

    .line 48
    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    .line 50
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 53
    throw p1

    .line 54
    :cond_3
    return-void
.end method

.method public e(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo/H1;->c:Ljava/lang/Object;

    .line 3
    check-cast v0, Lo/i8;

    .line 5
    iget-object v0, v0, Lo/i8;->v:Lo/T7;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0}, Lo/T7;->j()Lo/i8;

    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x1

    .line 14
    iget-object v0, v0, Lo/i8;->l:Lo/H1;

    .line 16
    invoke-virtual {v0, v1}, Lo/H1;->e(Z)V

    .line 19
    :cond_0
    iget-object v0, p0, Lo/H1;->b:Ljava/lang/Object;

    .line 21
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 23
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_3

    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 37
    if-nez v0, :cond_2

    .line 39
    const/4 v0, 0x0

    .line 40
    if-eqz p1, :cond_1

    .line 42
    throw v0

    .line 43
    :cond_1
    throw v0

    .line 44
    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    .line 46
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 49
    throw p1

    .line 50
    :cond_3
    return-void
.end method

.method public f(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo/H1;->c:Ljava/lang/Object;

    .line 3
    check-cast v0, Lo/i8;

    .line 5
    iget-object v0, v0, Lo/i8;->v:Lo/T7;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0}, Lo/T7;->j()Lo/i8;

    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x1

    .line 14
    iget-object v0, v0, Lo/i8;->l:Lo/H1;

    .line 16
    invoke-virtual {v0, v1}, Lo/H1;->f(Z)V

    .line 19
    :cond_0
    iget-object v0, p0, Lo/H1;->b:Ljava/lang/Object;

    .line 21
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 23
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_3

    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 37
    if-nez v0, :cond_2

    .line 39
    const/4 v0, 0x0

    .line 40
    if-eqz p1, :cond_1

    .line 42
    throw v0

    .line 43
    :cond_1
    throw v0

    .line 44
    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    .line 46
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 49
    throw p1

    .line 50
    :cond_3
    return-void
.end method

.method public g(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo/H1;->c:Ljava/lang/Object;

    .line 3
    check-cast v0, Lo/i8;

    .line 5
    iget-object v0, v0, Lo/i8;->v:Lo/T7;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0}, Lo/T7;->j()Lo/i8;

    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x1

    .line 14
    iget-object v0, v0, Lo/i8;->l:Lo/H1;

    .line 16
    invoke-virtual {v0, v1}, Lo/H1;->g(Z)V

    .line 19
    :cond_0
    iget-object v0, p0, Lo/H1;->b:Ljava/lang/Object;

    .line 21
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 23
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_3

    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 37
    if-nez v0, :cond_2

    .line 39
    const/4 v0, 0x0

    .line 40
    if-eqz p1, :cond_1

    .line 42
    throw v0

    .line 43
    :cond_1
    throw v0

    .line 44
    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    .line 46
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 49
    throw p1

    .line 50
    :cond_3
    return-void
.end method

.method public h(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo/H1;->c:Ljava/lang/Object;

    .line 3
    check-cast v0, Lo/i8;

    .line 5
    iget-object v0, v0, Lo/i8;->v:Lo/T7;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0}, Lo/T7;->j()Lo/i8;

    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x1

    .line 14
    iget-object v0, v0, Lo/i8;->l:Lo/H1;

    .line 16
    invoke-virtual {v0, v1}, Lo/H1;->h(Z)V

    .line 19
    :cond_0
    iget-object v0, p0, Lo/H1;->b:Ljava/lang/Object;

    .line 21
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 23
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_3

    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 37
    if-nez v0, :cond_2

    .line 39
    const/4 v0, 0x0

    .line 40
    if-eqz p1, :cond_1

    .line 42
    throw v0

    .line 43
    :cond_1
    throw v0

    .line 44
    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    .line 46
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 49
    throw p1

    .line 50
    :cond_3
    return-void
.end method

.method public i(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo/H1;->c:Ljava/lang/Object;

    .line 3
    check-cast v0, Lo/i8;

    .line 5
    iget-object v1, v0, Lo/i8;->t:Lo/V7;

    .line 7
    iget-object v1, v1, Lo/V7;->h:Lo/U0;

    .line 9
    iget-object v0, v0, Lo/i8;->v:Lo/T7;

    .line 11
    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {v0}, Lo/T7;->j()Lo/i8;

    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x1

    .line 18
    iget-object v0, v0, Lo/i8;->l:Lo/H1;

    .line 20
    invoke-virtual {v0, v1}, Lo/H1;->i(Z)V

    .line 23
    :cond_0
    iget-object v0, p0, Lo/H1;->b:Ljava/lang/Object;

    .line 25
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 27
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 30
    move-result-object v0

    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_3

    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    move-result-object v0

    .line 41
    if-nez v0, :cond_2

    .line 43
    const/4 v0, 0x0

    .line 44
    if-eqz p1, :cond_1

    .line 46
    throw v0

    .line 47
    :cond_1
    throw v0

    .line 48
    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    .line 50
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 53
    throw p1

    .line 54
    :cond_3
    return-void
.end method

.method public j(Ljava/lang/CharSequence;IILo/Lg;)Z
    .locals 3

    .line 1
    iget v0, p4, Lo/Lg;->c:I

    .line 3
    and-int/lit8 v0, v0, 0x4

    .line 5
    const/4 v1, 0x1

    .line 6
    if-lez v0, :cond_0

    .line 8
    return v1

    .line 9
    :cond_0
    iget-object v0, p0, Lo/H1;->b:Ljava/lang/Object;

    .line 11
    check-cast v0, Lo/Wg;

    .line 13
    if-nez v0, :cond_2

    .line 15
    new-instance v0, Lo/Wg;

    .line 17
    instance-of v2, p1, Landroid/text/Spannable;

    .line 19
    if-eqz v2, :cond_1

    .line 21
    check-cast p1, Landroid/text/Spannable;

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    new-instance v2, Landroid/text/SpannableString;

    .line 26
    invoke-direct {v2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 29
    move-object p1, v2

    .line 30
    :goto_0
    invoke-direct {v0, p1}, Lo/Wg;-><init>(Landroid/text/Spannable;)V

    .line 33
    iput-object v0, p0, Lo/H1;->b:Ljava/lang/Object;

    .line 35
    :cond_2
    iget-object p1, p0, Lo/H1;->c:Ljava/lang/Object;

    .line 37
    check-cast p1, Lo/u6;

    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    new-instance p1, Lo/Mg;

    .line 44
    invoke-direct {p1, p4}, Lo/Mg;-><init>(Lo/Lg;)V

    .line 47
    iget-object p4, p0, Lo/H1;->b:Ljava/lang/Object;

    .line 49
    check-cast p4, Lo/Wg;

    .line 51
    const/16 v0, 0x21

    .line 53
    invoke-virtual {p4, p1, p2, p3, v0}, Lo/Wg;->setSpan(Ljava/lang/Object;III)V

    .line 56
    return v1
.end method

.method public k(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo/H1;->c:Ljava/lang/Object;

    .line 3
    check-cast v0, Lo/i8;

    .line 5
    iget-object v0, v0, Lo/i8;->v:Lo/T7;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0}, Lo/T7;->j()Lo/i8;

    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x1

    .line 14
    iget-object v0, v0, Lo/i8;->l:Lo/H1;

    .line 16
    invoke-virtual {v0, v1}, Lo/H1;->k(Z)V

    .line 19
    :cond_0
    iget-object v0, p0, Lo/H1;->b:Ljava/lang/Object;

    .line 21
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 23
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_3

    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 37
    if-nez v0, :cond_2

    .line 39
    const/4 v0, 0x0

    .line 40
    if-eqz p1, :cond_1

    .line 42
    throw v0

    .line 43
    :cond_1
    throw v0

    .line 44
    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    .line 46
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 49
    throw p1

    .line 50
    :cond_3
    return-void
.end method

.method public l(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo/H1;->c:Ljava/lang/Object;

    .line 3
    check-cast v0, Lo/i8;

    .line 5
    iget-object v0, v0, Lo/i8;->v:Lo/T7;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0}, Lo/T7;->j()Lo/i8;

    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x1

    .line 14
    iget-object v0, v0, Lo/i8;->l:Lo/H1;

    .line 16
    invoke-virtual {v0, v1}, Lo/H1;->l(Z)V

    .line 19
    :cond_0
    iget-object v0, p0, Lo/H1;->b:Ljava/lang/Object;

    .line 21
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 23
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_3

    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 37
    if-nez v0, :cond_2

    .line 39
    const/4 v0, 0x0

    .line 40
    if-eqz p1, :cond_1

    .line 42
    throw v0

    .line 43
    :cond_1
    throw v0

    .line 44
    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    .line 46
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 49
    throw p1

    .line 50
    :cond_3
    return-void
.end method

.method public m(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo/H1;->c:Ljava/lang/Object;

    .line 3
    check-cast v0, Lo/i8;

    .line 5
    iget-object v0, v0, Lo/i8;->v:Lo/T7;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0}, Lo/T7;->j()Lo/i8;

    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x1

    .line 14
    iget-object v0, v0, Lo/i8;->l:Lo/H1;

    .line 16
    invoke-virtual {v0, v1}, Lo/H1;->m(Z)V

    .line 19
    :cond_0
    iget-object v0, p0, Lo/H1;->b:Ljava/lang/Object;

    .line 21
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 23
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_3

    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 37
    if-nez v0, :cond_2

    .line 39
    const/4 v0, 0x0

    .line 40
    if-eqz p1, :cond_1

    .line 42
    throw v0

    .line 43
    :cond_1
    throw v0

    .line 44
    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    .line 46
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 49
    throw p1

    .line 50
    :cond_3
    return-void
.end method

.method public n(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo/H1;->c:Ljava/lang/Object;

    .line 3
    check-cast v0, Lo/i8;

    .line 5
    iget-object v0, v0, Lo/i8;->v:Lo/T7;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0}, Lo/T7;->j()Lo/i8;

    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x1

    .line 14
    iget-object v0, v0, Lo/i8;->l:Lo/H1;

    .line 16
    invoke-virtual {v0, v1}, Lo/H1;->n(Z)V

    .line 19
    :cond_0
    iget-object v0, p0, Lo/H1;->b:Ljava/lang/Object;

    .line 21
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 23
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_3

    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 37
    if-nez v0, :cond_2

    .line 39
    const/4 v0, 0x0

    .line 40
    if-eqz p1, :cond_1

    .line 42
    throw v0

    .line 43
    :cond_1
    throw v0

    .line 44
    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    .line 46
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 49
    throw p1

    .line 50
    :cond_3
    return-void
.end method

.method public o(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo/H1;->c:Ljava/lang/Object;

    .line 3
    check-cast v0, Lo/i8;

    .line 5
    iget-object v0, v0, Lo/i8;->v:Lo/T7;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0}, Lo/T7;->j()Lo/i8;

    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x1

    .line 14
    iget-object v0, v0, Lo/i8;->l:Lo/H1;

    .line 16
    invoke-virtual {v0, v1}, Lo/H1;->o(Z)V

    .line 19
    :cond_0
    iget-object v0, p0, Lo/H1;->b:Ljava/lang/Object;

    .line 21
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 23
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_3

    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 37
    if-nez v0, :cond_2

    .line 39
    const/4 v0, 0x0

    .line 40
    if-eqz p1, :cond_1

    .line 42
    throw v0

    .line 43
    :cond_1
    throw v0

    .line 44
    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    .line 46
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 49
    throw p1

    .line 50
    :cond_3
    return-void
.end method

.method public p(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo/H1;->c:Ljava/lang/Object;

    .line 3
    check-cast v0, Lo/i8;

    .line 5
    iget-object v0, v0, Lo/i8;->v:Lo/T7;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0}, Lo/T7;->j()Lo/i8;

    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x1

    .line 14
    iget-object v0, v0, Lo/i8;->l:Lo/H1;

    .line 16
    invoke-virtual {v0, v1}, Lo/H1;->p(Z)V

    .line 19
    :cond_0
    iget-object v0, p0, Lo/H1;->b:Ljava/lang/Object;

    .line 21
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 23
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_3

    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 37
    if-nez v0, :cond_2

    .line 39
    const/4 v0, 0x0

    .line 40
    if-eqz p1, :cond_1

    .line 42
    throw v0

    .line 43
    :cond_1
    throw v0

    .line 44
    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    .line 46
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 49
    throw p1

    .line 50
    :cond_3
    return-void
.end method

.method public q(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo/H1;->c:Ljava/lang/Object;

    .line 3
    check-cast v0, Lo/i8;

    .line 5
    iget-object v0, v0, Lo/i8;->v:Lo/T7;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0}, Lo/T7;->j()Lo/i8;

    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x1

    .line 14
    iget-object v0, v0, Lo/i8;->l:Lo/H1;

    .line 16
    invoke-virtual {v0, v1}, Lo/H1;->q(Z)V

    .line 19
    :cond_0
    iget-object v0, p0, Lo/H1;->b:Ljava/lang/Object;

    .line 21
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 23
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_3

    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 37
    if-nez v0, :cond_2

    .line 39
    const/4 v0, 0x0

    .line 40
    if-eqz p1, :cond_1

    .line 42
    throw v0

    .line 43
    :cond_1
    throw v0

    .line 44
    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    .line 46
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 49
    throw p1

    .line 50
    :cond_3
    return-void
.end method

.method public r(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lo/H1;->c:Ljava/lang/Object;

    .line 3
    check-cast v0, Lo/pa;

    .line 5
    iget-object v0, v0, Lo/pa;->c:Lo/Ze;

    .line 7
    iget v1, v0, Lo/Ze;->c:I

    .line 9
    if-lez v1, :cond_2

    .line 11
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 14
    const-string v1, "Loaders:"

    .line 16
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 19
    iget v1, v0, Lo/Ze;->c:I

    .line 21
    if-gtz v1, :cond_0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v1, v0, Lo/Ze;->b:[Ljava/lang/Object;

    .line 26
    const/4 v2, 0x0

    .line 27
    aget-object v1, v1, v2

    .line 29
    if-nez v1, :cond_1

    .line 31
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 34
    const-string p1, "  #"

    .line 36
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 39
    iget-object p1, v0, Lo/Ze;->a:[I

    .line 41
    aget p1, p1, v2

    .line 43
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 46
    const-string p1, ": "

    .line 48
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 51
    const/4 p1, 0x0

    .line 52
    throw p1

    .line 53
    :cond_1
    new-instance p1, Ljava/lang/ClassCastException;

    .line 55
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 58
    throw p1

    .line 59
    :cond_2
    :goto_0
    return-void
.end method

.method public s(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lo/H1;->b:Ljava/lang/Object;

    .line 3
    check-cast v0, [I

    .line 5
    const/4 v1, -0x1

    .line 6
    if-nez v0, :cond_0

    .line 8
    const/16 v0, 0xa

    .line 10
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 13
    move-result p1

    .line 14
    add-int/lit8 p1, p1, 0x1

    .line 16
    new-array p1, p1, [I

    .line 18
    iput-object p1, p0, Lo/H1;->b:Ljava/lang/Object;

    .line 20
    invoke-static {p1, v1}, Ljava/util/Arrays;->fill([II)V

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    array-length v2, v0

    .line 25
    if-lt p1, v2, :cond_2

    .line 27
    array-length v2, v0

    .line 28
    :goto_0
    if-gt v2, p1, :cond_1

    .line 30
    mul-int/lit8 v2, v2, 0x2

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    new-array p1, v2, [I

    .line 35
    iput-object p1, p0, Lo/H1;->b:Ljava/lang/Object;

    .line 37
    array-length v2, v0

    .line 38
    const/4 v3, 0x0

    .line 39
    invoke-static {v0, v3, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    iget-object p1, p0, Lo/H1;->b:Ljava/lang/Object;

    .line 44
    check-cast p1, [I

    .line 46
    array-length v0, v0

    .line 47
    array-length v2, p1

    .line 48
    invoke-static {p1, v0, v2, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 51
    :cond_2
    :goto_1
    return-void
.end method

.method public t()V
    .locals 3

    .line 1
    iget-object v0, p0, Lo/H1;->b:Ljava/lang/Object;

    .line 3
    check-cast v0, Landroid/animation/Animator;

    .line 5
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 8
    const-string v0, "FragmentManager"

    .line 10
    const/4 v1, 0x2

    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    const-string v2, "Animator from operation "

    .line 21
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    iget-object v2, p0, Lo/H1;->c:Ljava/lang/Object;

    .line 26
    check-cast v2, Lo/bf;

    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    const-string v2, " has been canceled."

    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 40
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lo/H1;->a:I

    .line 3
    sparse-switch v0, :sswitch_data_0

    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    const-string v1, "Bounds{lower="

    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    iget-object v1, p0, Lo/H1;->b:Ljava/lang/Object;

    .line 20
    check-cast v1, Lo/t9;

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    const-string v1, " upper="

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    iget-object v1, p0, Lo/H1;->c:Ljava/lang/Object;

    .line 32
    check-cast v1, Lo/t9;

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    const-string v1, "}"

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 46
    return-object v0

    .line 47
    :sswitch_1
    iget-object v0, p0, Lo/H1;->b:Ljava/lang/Object;

    .line 49
    check-cast v0, Lo/We;

    .line 51
    const-string v1, "[ "

    .line 53
    if-eqz v0, :cond_0

    .line 55
    const/4 v0, 0x0

    .line 56
    :goto_0
    const/16 v2, 0x9

    .line 58
    if-ge v0, v2, :cond_0

    .line 60
    invoke-static {v1}, Lo/Ve;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    move-result-object v1

    .line 64
    iget-object v2, p0, Lo/H1;->b:Ljava/lang/Object;

    .line 66
    check-cast v2, Lo/We;

    .line 68
    iget-object v2, v2, Lo/We;->h:[F

    .line 70
    aget v2, v2, v0

    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 75
    const-string v2, " "

    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object v1

    .line 84
    add-int/lit8 v0, v0, 0x1

    .line 86
    goto :goto_0

    .line 87
    :cond_0
    const-string v0, "] "

    .line 89
    invoke-static {v1, v0}, Lo/o5;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    move-result-object v0

    .line 93
    iget-object v1, p0, Lo/H1;->b:Ljava/lang/Object;

    .line 95
    check-cast v1, Lo/We;

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    move-result-object v0

    .line 104
    return-object v0

    .line 105
    :sswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 107
    const/16 v1, 0x80

    .line 109
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 112
    const-string v1, "LoaderManager{"

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 120
    move-result v1

    .line 121
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 124
    move-result-object v1

    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    const-string v1, " in "

    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    iget-object v1, p0, Lo/H1;->b:Ljava/lang/Object;

    .line 135
    check-cast v1, Lo/R9;

    .line 137
    if-nez v1, :cond_1

    .line 139
    const-string v1, "null"

    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    goto :goto_1

    .line 145
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    move-result-object v2

    .line 149
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 152
    move-result-object v2

    .line 153
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 156
    move-result v3

    .line 157
    if-gtz v3, :cond_2

    .line 159
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    move-result-object v2

    .line 163
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 166
    move-result-object v2

    .line 167
    const/16 v3, 0x2e

    .line 169
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    .line 172
    move-result v3

    .line 173
    if-lez v3, :cond_2

    .line 175
    add-int/lit8 v3, v3, 0x1

    .line 177
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 180
    move-result-object v2

    .line 181
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    const/16 v2, 0x7b

    .line 186
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 189
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 192
    move-result v1

    .line 193
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 196
    move-result-object v1

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    :goto_1
    const-string v1, "}}"

    .line 202
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    move-result-object v0

    .line 209
    return-object v0

    nop

    .line 211
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_2
        0x12 -> :sswitch_1
        0x17 -> :sswitch_0
    .end sparse-switch
.end method

.method public u(IIII)Landroid/view/View;
    .locals 9

    .line 1
    iget-object v0, p0, Lo/H1;->b:Ljava/lang/Object;

    .line 3
    check-cast v0, Lo/sd;

    .line 5
    invoke-virtual {v0}, Lo/sd;->d()I

    .line 8
    move-result v1

    .line 9
    invoke-virtual {v0}, Lo/sd;->c()I

    .line 12
    move-result v2

    .line 13
    if-le p2, p1, :cond_0

    .line 15
    const/4 v3, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v3, -0x1

    .line 18
    :goto_0
    const/4 v4, 0x0

    .line 19
    :goto_1
    if-eq p1, p2, :cond_3

    .line 21
    iget v5, v0, Lo/sd;->a:I

    .line 23
    packed-switch v5, :pswitch_data_0

    .line 26
    iget-object v5, v0, Lo/sd;->b:Lo/ud;

    .line 28
    invoke-virtual {v5, p1}, Lo/ud;->u(I)Landroid/view/View;

    .line 31
    move-result-object v5

    .line 32
    goto :goto_2

    .line 33
    :pswitch_0
    iget-object v5, v0, Lo/sd;->b:Lo/ud;

    .line 35
    invoke-virtual {v5, p1}, Lo/ud;->u(I)Landroid/view/View;

    .line 38
    move-result-object v5

    .line 39
    :goto_2
    invoke-virtual {v0, v5}, Lo/sd;->b(Landroid/view/View;)I

    .line 42
    move-result v6

    .line 43
    invoke-virtual {v0, v5}, Lo/sd;->a(Landroid/view/View;)I

    .line 46
    move-result v7

    .line 47
    iget-object v8, p0, Lo/H1;->c:Ljava/lang/Object;

    .line 49
    check-cast v8, Lo/ph;

    .line 51
    iput v1, v8, Lo/ph;->b:I

    .line 53
    iput v2, v8, Lo/ph;->c:I

    .line 55
    iput v6, v8, Lo/ph;->d:I

    .line 57
    iput v7, v8, Lo/ph;->e:I

    .line 59
    if-eqz p3, :cond_1

    .line 61
    iput p3, v8, Lo/ph;->a:I

    .line 63
    invoke-virtual {v8}, Lo/ph;->a()Z

    .line 66
    move-result v6

    .line 67
    if-eqz v6, :cond_1

    .line 69
    return-object v5

    .line 70
    :cond_1
    if-eqz p4, :cond_2

    .line 72
    iput p4, v8, Lo/ph;->a:I

    .line 74
    invoke-virtual {v8}, Lo/ph;->a()Z

    .line 77
    move-result v6

    .line 78
    if-eqz v6, :cond_2

    .line 80
    move-object v4, v5

    .line 81
    :cond_2
    add-int/2addr p1, v3

    .line 82
    goto :goto_1

    .line 83
    :cond_3
    return-object v4

    nop

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public w(Landroid/view/View;Lo/Mi;)Lo/Mi;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    move-object/from16 v2, p2

    .line 7
    iget-object v3, v0, Lo/H1;->c:Ljava/lang/Object;

    .line 9
    check-cast v3, Lo/Vh;

    .line 11
    iget v4, v3, Lo/Vh;->a:I

    .line 13
    iget-object v5, v0, Lo/H1;->b:Ljava/lang/Object;

    .line 15
    check-cast v5, Lo/h3;

    .line 17
    iget-object v6, v2, Lo/Mi;->a:Lo/Ki;

    .line 19
    const/4 v7, 0x7

    .line 20
    invoke-virtual {v6, v7}, Lo/Ki;->f(I)Lo/t9;

    .line 23
    move-result-object v7

    .line 24
    const/16 v8, 0x20

    .line 26
    invoke-virtual {v6, v8}, Lo/Ki;->f(I)Lo/t9;

    .line 29
    move-result-object v6

    .line 30
    iget v8, v7, Lo/t9;->b:I

    .line 32
    iget-object v9, v5, Lo/h3;->b:Ljava/lang/Object;

    .line 34
    check-cast v9, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 36
    iput v8, v9, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->w:I

    .line 38
    invoke-static/range {p1 .. p1}, Lo/Ng;->l(Landroid/view/View;)Z

    .line 41
    move-result v8

    .line 42
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingBottom()I

    .line 45
    move-result v10

    .line 46
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingLeft()I

    .line 49
    move-result v11

    .line 50
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingRight()I

    .line 53
    move-result v12

    .line 54
    iget-boolean v13, v9, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->o:Z

    .line 56
    if-eqz v13, :cond_0

    .line 58
    invoke-virtual/range {p2 .. p2}, Lo/Mi;->a()I

    .line 61
    move-result v10

    .line 62
    iput v10, v9, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->v:I

    .line 64
    iget v14, v3, Lo/Vh;->c:I

    .line 66
    add-int/2addr v10, v14

    .line 67
    :cond_0
    iget v3, v3, Lo/Vh;->b:I

    .line 69
    iget-boolean v14, v9, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->p:Z

    .line 71
    iget v15, v7, Lo/t9;->a:I

    .line 73
    if-eqz v14, :cond_2

    .line 75
    if-eqz v8, :cond_1

    .line 77
    move v11, v3

    .line 78
    goto :goto_0

    .line 79
    :cond_1
    move v11, v4

    .line 80
    :goto_0
    add-int/2addr v11, v15

    .line 81
    :cond_2
    iget-boolean v14, v9, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->q:Z

    .line 83
    iget v0, v7, Lo/t9;->c:I

    .line 85
    if-eqz v14, :cond_4

    .line 87
    if-eqz v8, :cond_3

    .line 89
    goto :goto_1

    .line 90
    :cond_3
    move v4, v3

    .line 91
    :goto_1
    add-int v12, v4, v0

    .line 93
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 96
    move-result-object v3

    .line 97
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 99
    iget-boolean v4, v9, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->s:Z

    .line 101
    const/4 v8, 0x1

    .line 102
    if-eqz v4, :cond_5

    .line 104
    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 106
    if-eq v4, v15, :cond_5

    .line 108
    iput v15, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 110
    move v4, v8

    .line 111
    goto :goto_2

    .line 112
    :cond_5
    const/4 v4, 0x0

    .line 113
    :goto_2
    iget-boolean v14, v9, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->t:Z

    .line 115
    if-eqz v14, :cond_6

    .line 117
    iget v14, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 119
    if-eq v14, v0, :cond_6

    .line 121
    iput v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 123
    move v4, v8

    .line 124
    :cond_6
    iget-boolean v0, v9, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->u:Z

    .line 126
    if-eqz v0, :cond_7

    .line 128
    iget v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 130
    iget v7, v7, Lo/t9;->b:I

    .line 132
    if-eq v0, v7, :cond_7

    .line 134
    iput v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 136
    goto :goto_3

    .line 137
    :cond_7
    move v8, v4

    .line 138
    :goto_3
    if-eqz v8, :cond_8

    .line 140
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingTop()I

    .line 146
    move-result v0

    .line 147
    invoke-virtual {v1, v11, v0, v12, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 150
    iget-boolean v0, v5, Lo/h3;->a:Z

    .line 152
    if-eqz v0, :cond_9

    .line 154
    iget v1, v6, Lo/t9;->d:I

    .line 156
    iput v1, v9, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->m:I

    .line 158
    :cond_9
    if-nez v13, :cond_a

    .line 160
    if-eqz v0, :cond_b

    .line 162
    :cond_a
    invoke-virtual {v9}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->I()V

    .line 165
    :cond_b
    return-object v2
.end method

.method public x(Landroid/text/method/KeyListener;)Landroid/text/method/KeyListener;
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/text/method/NumberKeyListener;

    .line 3
    if-nez v0, :cond_3

    .line 5
    iget-object v0, p0, Lo/H1;->c:Ljava/lang/Object;

    .line 7
    check-cast v0, Lo/C;

    .line 9
    iget-object v0, v0, Lo/C;->b:Ljava/lang/Object;

    .line 11
    check-cast v0, Lo/H1;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    instance-of v0, p1, Lo/L6;

    .line 18
    if-eqz v0, :cond_0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    if-nez p1, :cond_1

    .line 23
    const/4 p1, 0x0

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    instance-of v0, p1, Landroid/text/method/NumberKeyListener;

    .line 27
    if-eqz v0, :cond_2

    .line 29
    goto :goto_0

    .line 30
    :cond_2
    new-instance v0, Lo/L6;

    .line 32
    invoke-direct {v0, p1}, Lo/L6;-><init>(Landroid/text/method/KeyListener;)V

    .line 35
    move-object p1, v0

    .line 36
    :cond_3
    :goto_0
    return-object p1
.end method

.method public z()V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/H1;->b:Ljava/lang/Object;

    .line 3
    check-cast v0, Landroid/util/SparseIntArray;

    .line 5
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 8
    return-void
.end method
