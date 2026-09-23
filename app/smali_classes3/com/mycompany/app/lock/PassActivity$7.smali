.class Lcom/mycompany/app/lock/PassActivity$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/lock/PassActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/lock/PassActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/lock/PassActivity$7;->c:Lcom/mycompany/app/lock/PassActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/lock/PassActivity$7;->c:Lcom/mycompany/app/lock/PassActivity;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/lock/PassActivity;->m1:Lcom/mycompany/app/view/MyEditPure;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    iput-boolean v1, p1, Lcom/mycompany/app/lock/PassActivity;->v1:Z

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    iput-object v2, p1, Lcom/mycompany/app/lock/PassActivity;->w1:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p1, Lcom/mycompany/app/lock/PassActivity;->k1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p1, Lcom/mycompany/app/lock/PassActivity;->p1:Lcom/mycompany/app/view/MyLineText;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p1, Lcom/mycompany/app/lock/PassActivity;->p1:Lcom/mycompany/app/view/MyLineText;

    .line 28
    .line 29
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 30
    .line 31
    const v3, -0x252526

    .line 32
    .line 33
    .line 34
    const v4, -0x7f7f80

    .line 35
    .line 36
    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    move v2, v4

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    move v2, v3

    .line 42
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p1, Lcom/mycompany/app/lock/PassActivity;->q1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 46
    .line 47
    sget v2, Lnet/kaki87/soul2/testing/R$string;->continue_input:I

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p1, Lcom/mycompany/app/lock/PassActivity;->q1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p1, Lcom/mycompany/app/lock/PassActivity;->q1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 58
    .line 59
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 60
    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    move v3, v4

    .line 64
    :cond_2
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 65
    .line 66
    .line 67
    return-void
.end method
