.class public final Lo/D0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic a:Lo/H0;

.field public final synthetic b:Lo/E0;


# direct methods
.method public constructor <init>(Lo/E0;Lo/H0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lo/D0;->b:Lo/E0;

    .line 6
    iput-object p2, p0, Lo/D0;->a:Lo/H0;

    .line 8
    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lo/D0;->b:Lo/E0;

    .line 3
    iget-object p2, p1, Lo/E0;->h:Landroid/content/DialogInterface$OnClickListener;

    .line 5
    iget-object p4, p0, Lo/D0;->a:Lo/H0;

    .line 7
    iget-object p5, p4, Lo/H0;->b:Lo/J0;

    .line 9
    invoke-interface {p2, p5, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 12
    iget-boolean p1, p1, Lo/E0;->i:Z

    .line 14
    if-nez p1, :cond_0

    .line 16
    iget-object p1, p4, Lo/H0;->b:Lo/J0;

    .line 18
    invoke-virtual {p1}, Lo/J0;->dismiss()V

    .line 21
    :cond_0
    return-void
.end method
