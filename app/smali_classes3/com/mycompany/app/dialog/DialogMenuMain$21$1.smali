.class Lcom/mycompany/app/dialog/DialogMenuMain$21$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyBarView$BarListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogMenuMain$21;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogMenuMain$21;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogMenuMain$21$1;->a:Lcom/mycompany/app/dialog/DialogMenuMain$21;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(ILandroid/view/View;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogMenuMain$21$1;->a:Lcom/mycompany/app/dialog/DialogMenuMain$21;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogMenuMain$21;->c:Lcom/mycompany/app/dialog/DialogMenuMain;

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogMenuMain;->c0:Lcom/mycompany/app/dialog/DialogMenuMain$DownMenuListener;

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    invoke-interface {p1}, Lcom/mycompany/app/dialog/DialogMenuMain$DownMenuListener;->e()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object p3, v0, Lcom/mycompany/app/dialog/DialogMenuMain;->c0:Lcom/mycompany/app/dialog/DialogMenuMain$DownMenuListener;

    .line 16
    .line 17
    if-eqz p3, :cond_1

    .line 18
    .line 19
    invoke-interface {p3, p2, p1}, Lcom/mycompany/app/dialog/DialogMenuMain$DownMenuListener;->b(Landroid/view/View;I)V

    .line 20
    .line 21
    .line 22
    :cond_1
    return-void
.end method
