.class public final Lo/ze;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lo/L1;

.field public b:Lo/L1;

.field public c:Lo/L1;

.field public d:Lo/L1;

.field public e:Lo/d5;

.field public f:Lo/d5;

.field public g:Lo/d5;

.field public h:Lo/d5;

.field public i:Lo/u6;

.field public j:Lo/u6;

.field public k:Lo/u6;

.field public l:Lo/u6;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lo/fe;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lo/ze;->a:Lo/L1;

    .line 11
    new-instance v0, Lo/fe;

    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v0, p0, Lo/ze;->b:Lo/L1;

    .line 18
    new-instance v0, Lo/fe;

    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v0, p0, Lo/ze;->c:Lo/L1;

    .line 25
    new-instance v0, Lo/fe;

    .line 27
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v0, p0, Lo/ze;->d:Lo/L1;

    .line 32
    new-instance v0, Lo/g;

    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-direct {v0, v1}, Lo/g;-><init>(F)V

    .line 38
    iput-object v0, p0, Lo/ze;->e:Lo/d5;

    .line 40
    new-instance v0, Lo/g;

    .line 42
    invoke-direct {v0, v1}, Lo/g;-><init>(F)V

    .line 45
    iput-object v0, p0, Lo/ze;->f:Lo/d5;

    .line 47
    new-instance v0, Lo/g;

    .line 49
    invoke-direct {v0, v1}, Lo/g;-><init>(F)V

    .line 52
    iput-object v0, p0, Lo/ze;->g:Lo/d5;

    .line 54
    new-instance v0, Lo/g;

    .line 56
    invoke-direct {v0, v1}, Lo/g;-><init>(F)V

    .line 59
    iput-object v0, p0, Lo/ze;->h:Lo/d5;

    .line 61
    new-instance v0, Lo/u6;

    .line 63
    const/4 v1, 0x0

    .line 64
    invoke-direct {v0, v1}, Lo/u6;-><init>(I)V

    .line 67
    iput-object v0, p0, Lo/ze;->i:Lo/u6;

    .line 69
    new-instance v0, Lo/u6;

    .line 71
    const/4 v1, 0x0

    .line 72
    invoke-direct {v0, v1}, Lo/u6;-><init>(I)V

    .line 75
    iput-object v0, p0, Lo/ze;->j:Lo/u6;

    .line 77
    new-instance v0, Lo/u6;

    .line 79
    const/4 v1, 0x0

    .line 80
    invoke-direct {v0, v1}, Lo/u6;-><init>(I)V

    .line 83
    iput-object v0, p0, Lo/ze;->k:Lo/u6;

    .line 85
    new-instance v0, Lo/u6;

    .line 87
    const/4 v1, 0x0

    .line 88
    invoke-direct {v0, v1}, Lo/u6;-><init>(I)V

    .line 91
    iput-object v0, p0, Lo/ze;->l:Lo/u6;

    .line 93
    return-void
.end method

.method public static b(Lo/L1;)V
    .locals 1

    .line 1
    instance-of v0, p0, Lo/fe;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    check-cast p0, Lo/fe;

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    return-void

    .line 11
    :cond_0
    instance-of v0, p0, Lo/h5;

    .line 13
    if-eqz v0, :cond_1

    .line 15
    check-cast p0, Lo/h5;

    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    :cond_1
    return-void
.end method


# virtual methods
.method public final a()Lo/Ae;
    .locals 2

    .line 1
    new-instance v0, Lo/Ae;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    iget-object v1, p0, Lo/ze;->a:Lo/L1;

    .line 8
    iput-object v1, v0, Lo/Ae;->a:Lo/L1;

    .line 10
    iget-object v1, p0, Lo/ze;->b:Lo/L1;

    .line 12
    iput-object v1, v0, Lo/Ae;->b:Lo/L1;

    .line 14
    iget-object v1, p0, Lo/ze;->c:Lo/L1;

    .line 16
    iput-object v1, v0, Lo/Ae;->c:Lo/L1;

    .line 18
    iget-object v1, p0, Lo/ze;->d:Lo/L1;

    .line 20
    iput-object v1, v0, Lo/Ae;->d:Lo/L1;

    .line 22
    iget-object v1, p0, Lo/ze;->e:Lo/d5;

    .line 24
    iput-object v1, v0, Lo/Ae;->e:Lo/d5;

    .line 26
    iget-object v1, p0, Lo/ze;->f:Lo/d5;

    .line 28
    iput-object v1, v0, Lo/Ae;->f:Lo/d5;

    .line 30
    iget-object v1, p0, Lo/ze;->g:Lo/d5;

    .line 32
    iput-object v1, v0, Lo/Ae;->g:Lo/d5;

    .line 34
    iget-object v1, p0, Lo/ze;->h:Lo/d5;

    .line 36
    iput-object v1, v0, Lo/Ae;->h:Lo/d5;

    .line 38
    iget-object v1, p0, Lo/ze;->i:Lo/u6;

    .line 40
    iput-object v1, v0, Lo/Ae;->i:Lo/u6;

    .line 42
    iget-object v1, p0, Lo/ze;->j:Lo/u6;

    .line 44
    iput-object v1, v0, Lo/Ae;->j:Lo/u6;

    .line 46
    iget-object v1, p0, Lo/ze;->k:Lo/u6;

    .line 48
    iput-object v1, v0, Lo/Ae;->k:Lo/u6;

    .line 50
    iget-object v1, p0, Lo/ze;->l:Lo/u6;

    .line 52
    iput-object v1, v0, Lo/Ae;->l:Lo/u6;

    .line 54
    return-object v0
.end method
