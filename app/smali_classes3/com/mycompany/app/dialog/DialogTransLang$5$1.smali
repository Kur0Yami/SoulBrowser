.class Lcom/mycompany/app/dialog/DialogTransLang$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogTransLang$5;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTransLang$5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTransLang$5$1;->c:Lcom/mycompany/app/dialog/DialogTransLang$5;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTransLang$5$1;->c:Lcom/mycompany/app/dialog/DialogTransLang$5;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogTransLang$5;->c:Lcom/mycompany/app/dialog/DialogTransLang;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTransLang;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTransLang;->D0:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    :goto_0
    return-void

    .line 15
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogTransLang;->F()V

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogTransLang;->E0:Z

    .line 20
    .line 21
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 22
    .line 23
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogTransLang;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 24
    .line 25
    sget v5, Lnet/kaki87/soul2/testing/R$string;->lang_delete:I

    .line 26
    .line 27
    sget v6, Lnet/kaki87/soul2/testing/R$string;->delete:I

    .line 28
    .line 29
    new-instance v8, Lcom/mycompany/app/dialog/DialogTransLang$20;

    .line 30
    .line 31
    invoke-direct {v8, v0}, Lcom/mycompany/app/dialog/DialogTransLang$20;-><init>(Lcom/mycompany/app/dialog/DialogTransLang;)V

    .line 32
    .line 33
    .line 34
    const/4 v4, 0x1

    .line 35
    const/4 v7, 0x0

    .line 36
    invoke-direct/range {v2 .. v8}, Lcom/mycompany/app/dialog/DialogSetMsg;-><init>(Landroid/app/Activity;ZIIILcom/mycompany/app/dialog/DialogSetMsg$DialogMsgListener;)V

    .line 37
    .line 38
    .line 39
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogTransLang;->D0:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 40
    .line 41
    new-instance v1, Lcom/mycompany/app/dialog/DialogTransLang$21;

    .line 42
    .line 43
    invoke-direct {v1, v0}, Lcom/mycompany/app/dialog/DialogTransLang$21;-><init>(Lcom/mycompany/app/dialog/DialogTransLang;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method
