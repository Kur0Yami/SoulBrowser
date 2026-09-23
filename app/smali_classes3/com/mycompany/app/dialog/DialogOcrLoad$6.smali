.class Lcom/mycompany/app/dialog/DialogOcrLoad$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogOcrLoad;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogOcrLoad;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogOcrLoad$6;->c:Lcom/mycompany/app/dialog/DialogOcrLoad;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogOcrLoad$6;->c:Lcom/mycompany/app/dialog/DialogOcrLoad;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogOcrLoad;->d0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogOcrLoad;->B(Z)V

    .line 10
    .line 11
    .line 12
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogOcrLoad;->f0:Lcom/mycompany/app/view/MyLineText;

    .line 13
    .line 14
    const v2, -0x50506

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 18
    .line 19
    .line 20
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogOcrLoad;->d0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    const/high16 v3, 0x41800000    # 16.0f

    .line 24
    .line 25
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 26
    .line 27
    .line 28
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogOcrLoad;->d0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 29
    .line 30
    sget v2, Lnet/kaki87/soul2/testing/R$string;->ocr_load_3:I

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 33
    .line 34
    .line 35
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogOcrLoad;->f0:Lcom/mycompany/app/view/MyLineText;

    .line 36
    .line 37
    sget v1, Lnet/kaki87/soul2/testing/R$string;->translate:I

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 40
    .line 41
    .line 42
    return-void
.end method
