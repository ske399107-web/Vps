.class public final Lo/r8;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Lo/T7;

.field public c:Z

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Lo/M9;

.field public i:Lo/M9;


# direct methods
.method public constructor <init>(ILo/T7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lo/r8;->a:I

    .line 3
    iput-object p2, p0, Lo/r8;->b:Lo/T7;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lo/r8;->c:Z

    .line 5
    sget-object p1, Lo/M9;->e:Lo/M9;

    iput-object p1, p0, Lo/r8;->h:Lo/M9;

    .line 6
    iput-object p1, p0, Lo/r8;->i:Lo/M9;

    return-void
.end method

.method public constructor <init>(ILo/T7;I)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lo/r8;->a:I

    .line 9
    iput-object p2, p0, Lo/r8;->b:Lo/T7;

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lo/r8;->c:Z

    .line 11
    sget-object p1, Lo/M9;->e:Lo/M9;

    iput-object p1, p0, Lo/r8;->h:Lo/M9;

    .line 12
    iput-object p1, p0, Lo/r8;->i:Lo/M9;

    return-void
.end method
