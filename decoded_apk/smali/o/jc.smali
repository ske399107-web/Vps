.class public final Lo/jc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lo/jc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lo/jc;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Lo/jc;->a:Lo/jc;

    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lo/F8;Lo/F8;Lo/u8;Lo/u8;)Landroid/window/OnBackInvokedCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/F8;",
            "Lo/F8;",
            "Lo/u8;",
            "Lo/u8;",
            ")",
            "Landroid/window/OnBackInvokedCallback;"
        }
    .end annotation

    .line 1
    const-string v0, "onBackStarted"

    .line 3
    invoke-static {p1, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const-string v0, "onBackProgressed"

    .line 8
    invoke-static {p2, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    const-string v0, "onBackInvoked"

    .line 13
    invoke-static {p3, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    const-string v0, "onBackCancelled"

    .line 18
    invoke-static {p4, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    new-instance v0, Lo/ic;

    .line 23
    invoke-direct {v0, p1, p2, p3, p4}, Lo/ic;-><init>(Lo/F8;Lo/F8;Lo/u8;Lo/u8;)V

    .line 26
    return-object v0
.end method
