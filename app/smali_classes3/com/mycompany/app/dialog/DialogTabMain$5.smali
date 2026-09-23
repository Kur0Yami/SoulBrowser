.class Lcom/mycompany/app/dialog/DialogTabMain$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogTabMain;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTabMain;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMain$5;->c:Lcom/mycompany/app/dialog/DialogTabMain;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMain$5;->c:Lcom/mycompany/app/dialog/DialogTabMain;

    .line 2
    .line 3
    iget-boolean v0, p1, Lcom/mycompany/app/dialog/DialogTabMain;->L:Z

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/mycompany/app/dialog/DialogTabMain;->x(Z)Lcom/mycompany/app/web/WebTabAdapter;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebTabAdapter;->u:Z

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    :goto_0
    return-void

    .line 17
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebTabAdapter;->N()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x1

    .line 22
    xor-int/2addr v1, v2

    .line 23
    iget-object v3, p1, Lcom/mycompany/app/dialog/DialogTabMain;->T:Lcom/mycompany/app/view/MyButtonCheck;

    .line 24
    .line 25
    invoke-virtual {v3, v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/web/WebTabAdapter;->X(ZZ)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p1, Lcom/mycompany/app/dialog/DialogTabMain;->S:Landroidx/appcompat/widget/AppCompatTextView;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebTabAdapter;->E()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebTabAdapter;->J()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    invoke-static {v2, v0}, Lcom/mycompany/app/main/MainUtil;->h3(II)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogTabMain;->M()V

    .line 49
    .line 50
    .line 51
    return-void
.end method
