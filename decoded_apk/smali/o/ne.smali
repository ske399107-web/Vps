.class public final Lo/ne;
.super Lo/F9;
.source "SourceFile"

# interfaces
.implements Lo/F8;


# static fields
.field public static final a:Lo/ne;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lo/ne;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Lo/ne;->a:Lo/ne;

    .line 8
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lo/f5;

    .line 3
    const-string v0, "$this$initializer"

    .line 5
    invoke-static {p1, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance p1, Lo/pe;

    .line 10
    invoke-direct {p1}, Lo/pe;-><init>()V

    .line 13
    return-object p1
.end method
