.class Lcom/mycompany/app/dialog/DialogViewRead$51;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyFadeListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogViewRead;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewRead;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewRead$51;->a:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogViewRead$51;->a:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 5
    .line 6
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogViewRead;->U:Lcom/mycompany/app/view/MyFadeFrame;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyFadeFrame;->f()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogViewRead;->U:Lcom/mycompany/app/view/MyFadeFrame;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p1, Lcom/mycompany/app/dialog/DialogViewRead;->U:Lcom/mycompany/app/view/MyFadeFrame;

    .line 20
    .line 21
    :cond_1
    invoke-static {p1}, Lcom/mycompany/app/dialog/DialogViewRead;->D(Lcom/mycompany/app/dialog/DialogViewRead;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final b(ZZ)V
    .locals 0

    .line 1
    return-void
.end method
