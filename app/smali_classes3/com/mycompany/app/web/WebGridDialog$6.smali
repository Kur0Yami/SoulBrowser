.class Lcom/mycompany/app/web/WebGridDialog$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebGridDialog;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebGridDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebGridDialog$6;->c:Lcom/mycompany/app/web/WebGridDialog;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/web/WebGridDialog$6;->c:Lcom/mycompany/app/web/WebGridDialog;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/web/WebGridDialog;->R:Lcom/mycompany/app/view/MyProgressBar;

    .line 4
    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget-boolean v0, v0, Lcom/mycompany/app/view/MyProgressBar;->A:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p1, Lcom/mycompany/app/web/WebGridDialog;->Z:Lcom/mycompany/app/web/WebGridAdapter;

    .line 13
    .line 14
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebGridAdapter;->i:Z

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebGridAdapter;->A()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x1

    .line 24
    xor-int/2addr v0, v1

    .line 25
    iget-object v2, p1, Lcom/mycompany/app/web/WebGridDialog;->Q:Lcom/mycompany/app/view/MyButtonCheck;

    .line 26
    .line 27
    invoke-virtual {v2, v0, v1}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 28
    .line 29
    .line 30
    iget-object v2, p1, Lcom/mycompany/app/web/WebGridDialog;->Z:Lcom/mycompany/app/web/WebGridAdapter;

    .line 31
    .line 32
    invoke-virtual {v2, v0, v1}, Lcom/mycompany/app/web/WebGridAdapter;->D(ZZ)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p1, Lcom/mycompany/app/web/WebGridDialog;->P:Landroidx/appcompat/widget/AppCompatTextView;

    .line 36
    .line 37
    iget-object v1, p1, Lcom/mycompany/app/web/WebGridDialog;->Z:Lcom/mycompany/app/web/WebGridAdapter;

    .line 38
    .line 39
    iget v2, v1, Lcom/mycompany/app/web/WebGridAdapter;->k:I

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebGridAdapter;->y()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-static {v2, v1}, Lcom/mycompany/app/main/MainUtil;->h3(II)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/mycompany/app/web/WebGridDialog;->E()V

    .line 53
    .line 54
    .line 55
    :cond_2
    :goto_0
    return-void
.end method
