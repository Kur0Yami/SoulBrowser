.class Lcom/mycompany/app/dialog/DialogPassLoad$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogPassLoad;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogPassLoad;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogPassLoad$4;->c:Lcom/mycompany/app/dialog/DialogPassLoad;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogPassLoad$4;->c:Lcom/mycompany/app/dialog/DialogPassLoad;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogPassLoad;->o0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-boolean v1, v0, Lcom/mycompany/app/view/MyButtonCheck;->D:Z

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogPassLoad;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 18
    .line 19
    const/16 v1, 0x81

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogPassLoad;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 25
    .line 26
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    invoke-virtual {v0, v2, v2}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogPassLoad;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 38
    .line 39
    const/16 v1, 0xa1

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogPassLoad;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method
