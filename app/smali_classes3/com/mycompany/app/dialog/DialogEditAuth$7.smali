.class Lcom/mycompany/app/dialog/DialogEditAuth$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogEditAuth;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditAuth;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditAuth$7;->c:Lcom/mycompany/app/dialog/DialogEditAuth;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogEditAuth$7;->c:Lcom/mycompany/app/dialog/DialogEditAuth;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogEditAuth;->h0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    iget-boolean v1, v0, Lcom/mycompany/app/view/MyButtonCheck;->D:Z

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0, v2, v3}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogEditAuth;->g0:Lcom/mycompany/app/view/MyEditText;

    .line 18
    .line 19
    const/16 v1, 0x81

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogEditAuth;->g0:Lcom/mycompany/app/view/MyEditText;

    .line 25
    .line 26
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {v0, v3, v3}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogEditAuth;->g0:Lcom/mycompany/app/view/MyEditText;

    .line 38
    .line 39
    const/16 v1, 0xa1

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogEditAuth;->g0:Lcom/mycompany/app/view/MyEditText;

    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 48
    .line 49
    .line 50
    :goto_0
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogEditAuth;->g0:Lcom/mycompany/app/view/MyEditText;

    .line 51
    .line 52
    invoke-static {v0, v2}, Lcom/mycompany/app/main/MainUtil;->Q0(Landroid/widget/EditText;Z)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_2

    .line 61
    .line 62
    :goto_1
    return-void

    .line 63
    :cond_2
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogEditAuth;->g0:Lcom/mycompany/app/view/MyEditText;

    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 70
    .line 71
    .line 72
    return-void
.end method
