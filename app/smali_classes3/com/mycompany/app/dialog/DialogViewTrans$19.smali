.class Lcom/mycompany/app/dialog/DialogViewTrans$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogTransLang$TransLangListener;


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
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewTrans$19;->a:Lcom/mycompany/app/dialog/DialogViewTrans;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/dialog/DialogViewTrans;->k1:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans$19;->a:Lcom/mycompany/app/dialog/DialogViewTrans;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogViewTrans;->E()V

    .line 6
    .line 7
    .line 8
    iget v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->R0:I

    .line 9
    .line 10
    const/4 v2, 0x3

    .line 11
    if-ne v1, v2, :cond_1

    .line 12
    .line 13
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v1, Lcom/mycompany/app/dialog/DialogViewTrans$16;

    .line 21
    .line 22
    invoke-direct {v1, v0, p1}, Lcom/mycompany/app/dialog/DialogViewTrans$16;-><init>(Lcom/mycompany/app/dialog/DialogViewTrans;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    return-void
.end method
