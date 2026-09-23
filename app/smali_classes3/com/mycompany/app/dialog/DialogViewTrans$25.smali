.class Lcom/mycompany/app/dialog/DialogViewTrans$25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogSetDesk$SetDeskListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogViewTrans;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewTrans;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewTrans$25;->a:Lcom/mycompany/app/dialog/DialogViewTrans;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogViewTrans$25;->a:Lcom/mycompany/app/dialog/DialogViewTrans;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogViewTrans;->Z0:Lcom/mycompany/app/main/MainTransText;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainTransText;->b()V

    .line 9
    .line 10
    .line 11
    iput-object v1, p1, Lcom/mycompany/app/dialog/DialogViewTrans;->Z0:Lcom/mycompany/app/main/MainTransText;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogViewTrans;->e0:Lcom/mycompany/app/web/WebNestView;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p1, Lcom/mycompany/app/dialog/DialogViewTrans;->Y0:Z

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lcom/mycompany/app/dialog/DialogViewTrans;->O(Z)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogViewTrans;->K0:Lcom/mycompany/app/view/MyButtonImage;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonImage;->setLoad(Z)V

    .line 30
    .line 31
    .line 32
    iput-object v1, p1, Lcom/mycompany/app/dialog/DialogViewTrans;->K0:Lcom/mycompany/app/view/MyButtonImage;

    .line 33
    .line 34
    :cond_2
    :goto_0
    return-void
.end method
