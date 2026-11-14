.class public final Lo/P7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lo/T7;


# direct methods
.method public constructor <init>(Lo/T7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lo/P7;->a:Lo/T7;

    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lo/P7;->a:Lo/T7;

    .line 3
    iget-object v1, v0, Lo/T7;->P:Lo/t8;

    .line 5
    invoke-virtual {v1}, Lo/t8;->a()V

    .line 8
    invoke-static {v0}, Lo/x9;->v(Lo/te;)V

    .line 11
    return-void
.end method
