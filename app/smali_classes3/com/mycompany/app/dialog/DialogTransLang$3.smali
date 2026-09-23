.class Lcom/mycompany/app/dialog/DialogTransLang$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogTransLang;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTransLang;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTransLang$3;->c:Lcom/mycompany/app/dialog/DialogTransLang;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogTransLang$3;->c:Lcom/mycompany/app/dialog/DialogTransLang;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogTransLang;->m0:Lcom/mycompany/app/view/MyButtonImage;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, v0}, Lcom/mycompany/app/dialog/DialogTransLang;->G(Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogTransLang;->l0:Lcom/mycompany/app/view/MyEditPure;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v1}, Lcom/mycompany/app/dialog/DialogTransLang;->E(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
