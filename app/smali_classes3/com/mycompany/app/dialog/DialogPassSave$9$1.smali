.class Lcom/mycompany/app/dialog/DialogPassSave$9$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogPassSave$9;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogPassSave$9;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogPassSave$9$1;->c:Lcom/mycompany/app/dialog/DialogPassSave$9;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPassSave$9$1;->c:Lcom/mycompany/app/dialog/DialogPassSave$9;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogPassSave$9;->c:Lcom/mycompany/app/dialog/DialogPassSave;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassSave;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPassSave;->x0:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogPassSave;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 16
    .line 17
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    const v1, -0x50506

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/high16 v1, -0x1000000

    .line 26
    .line 27
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
