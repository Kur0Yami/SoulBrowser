.class Lcom/mycompany/app/lock/PinActivity$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/lock/PinActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/lock/PinActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/lock/PinActivity$6;->c:Lcom/mycompany/app/lock/PinActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/lock/PinActivity$6;->c:Lcom/mycompany/app/lock/PinActivity;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/lock/PinActivity;->p1:Lcom/mycompany/app/lock/PinLock;

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
    iput-boolean v1, p1, Lcom/mycompany/app/lock/PinActivity;->x1:Z

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    iput-object v2, p1, Lcom/mycompany/app/lock/PinActivity;->y1:Ljava/lang/String;

    .line 13
    .line 14
    const-string v3, ""

    .line 15
    .line 16
    iput-object v3, v0, Lcom/mycompany/app/lock/PinLock;->h:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p1, v2}, Lcom/mycompany/app/lock/PinActivity;->C0(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p1, Lcom/mycompany/app/lock/PinActivity;->k1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 22
    .line 23
    sget v2, Lnet/kaki87/soul2/testing/R$string;->input:I

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p1, Lcom/mycompany/app/lock/PinActivity;->r1:Lcom/mycompany/app/view/MyLineText;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p1, Lcom/mycompany/app/lock/PinActivity;->r1:Lcom/mycompany/app/view/MyLineText;

    .line 34
    .line 35
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 36
    .line 37
    const v3, -0x252526

    .line 38
    .line 39
    .line 40
    const v4, -0x7f7f80

    .line 41
    .line 42
    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    move v2, v4

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    move v2, v3

    .line 48
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p1, Lcom/mycompany/app/lock/PinActivity;->s1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 52
    .line 53
    sget v2, Lnet/kaki87/soul2/testing/R$string;->continue_input:I

    .line 54
    .line 55
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p1, Lcom/mycompany/app/lock/PinActivity;->s1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p1, Lcom/mycompany/app/lock/PinActivity;->s1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 64
    .line 65
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 66
    .line 67
    if-eqz v0, :cond_2

    .line 68
    .line 69
    move v3, v4

    .line 70
    :cond_2
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 71
    .line 72
    .line 73
    return-void
.end method
