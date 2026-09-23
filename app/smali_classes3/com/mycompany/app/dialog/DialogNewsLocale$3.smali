.class Lcom/mycompany/app/dialog/DialogNewsLocale$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogNewsLocale;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogNewsLocale;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogNewsLocale$3;->c:Lcom/mycompany/app/dialog/DialogNewsLocale;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogNewsLocale$3;->c:Lcom/mycompany/app/dialog/DialogNewsLocale;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogNewsLocale;->j0:Lcom/mycompany/app/view/MyButtonImage;

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
    invoke-virtual {p1, v0}, Lcom/mycompany/app/dialog/DialogNewsLocale;->G(Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogNewsLocale;->i0:Lcom/mycompany/app/view/MyEditPure;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogNewsLocale;->r0:Lcom/mycompany/app/dialog/DialogNewsLocale$DialogTask;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    iput-boolean v2, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 24
    .line 25
    :cond_1
    iput-object v1, p1, Lcom/mycompany/app/dialog/DialogNewsLocale;->r0:Lcom/mycompany/app/dialog/DialogNewsLocale$DialogTask;

    .line 26
    .line 27
    new-instance v0, Lcom/mycompany/app/dialog/DialogNewsLocale$DialogTask;

    .line 28
    .line 29
    invoke-direct {v0, p1, v1}, Lcom/mycompany/app/dialog/DialogNewsLocale$DialogTask;-><init>(Lcom/mycompany/app/dialog/DialogNewsLocale;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p1, Lcom/mycompany/app/dialog/DialogNewsLocale;->r0:Lcom/mycompany/app/dialog/DialogNewsLocale$DialogTask;

    .line 33
    .line 34
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogNewsLocale;->b0:Landroid/content/Context;

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
