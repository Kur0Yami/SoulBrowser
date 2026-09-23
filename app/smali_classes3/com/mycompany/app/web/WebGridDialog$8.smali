.class Lcom/mycompany/app/web/WebGridDialog$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/web/WebGridAdapter$WebGridListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebGridDialog;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebGridDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebGridDialog$8;->a:Lcom/mycompany/app/web/WebGridDialog;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final b(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebGridDialog$8;->a:Lcom/mycompany/app/web/WebGridDialog;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->S:Lcom/mycompany/app/view/MyRecyclerView;

    .line 4
    .line 5
    if-eqz v1, :cond_4

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->Z:Lcom/mycompany/app/web/WebGridAdapter;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    if-ltz p1, :cond_4

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebGridAdapter;->y()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-lt p1, v1, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->Z:Lcom/mycompany/app/web/WebGridAdapter;

    .line 22
    .line 23
    iget-boolean v2, v1, Lcom/mycompany/app/web/WebGridAdapter;->i:Z

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    if-nez v2, :cond_2

    .line 27
    .line 28
    invoke-virtual {v0, p1, v3}, Lcom/mycompany/app/web/WebGridDialog;->F(IZ)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_2
    invoke-virtual {v1, p1}, Lcom/mycompany/app/web/WebGridAdapter;->H(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebGridDialog;->E()V

    .line 36
    .line 37
    .line 38
    iget-object p1, v0, Lcom/mycompany/app/web/WebGridDialog;->P:Landroidx/appcompat/widget/AppCompatTextView;

    .line 39
    .line 40
    if-eqz p1, :cond_3

    .line 41
    .line 42
    iget-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->Z:Lcom/mycompany/app/web/WebGridAdapter;

    .line 43
    .line 44
    iget v2, v1, Lcom/mycompany/app/web/WebGridAdapter;->k:I

    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebGridAdapter;->y()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    invoke-static {v2, v1}, Lcom/mycompany/app/main/MainUtil;->h3(II)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    .line 56
    .line 57
    :cond_3
    iget-object p1, v0, Lcom/mycompany/app/web/WebGridDialog;->Q:Lcom/mycompany/app/view/MyButtonCheck;

    .line 58
    .line 59
    if-eqz p1, :cond_4

    .line 60
    .line 61
    iget-object v0, v0, Lcom/mycompany/app/web/WebGridDialog;->Z:Lcom/mycompany/app/web/WebGridAdapter;

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebGridAdapter;->A()Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    invoke-virtual {p1, v0, v3}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 68
    .line 69
    .line 70
    :cond_4
    :goto_0
    return-void
.end method

.method public final c(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebGridDialog$8;->a:Lcom/mycompany/app/web/WebGridDialog;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->Z:Lcom/mycompany/app/web/WebGridAdapter;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-boolean v2, v1, Lcom/mycompany/app/web/WebGridAdapter;->i:Z

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    if-eqz v2, :cond_2

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Lcom/mycompany/app/web/WebGridAdapter;->H(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebGridDialog;->E()V

    .line 17
    .line 18
    .line 19
    iget-object p1, v0, Lcom/mycompany/app/web/WebGridDialog;->P:Landroidx/appcompat/widget/AppCompatTextView;

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    iget-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->Z:Lcom/mycompany/app/web/WebGridAdapter;

    .line 24
    .line 25
    iget v2, v1, Lcom/mycompany/app/web/WebGridAdapter;->k:I

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebGridAdapter;->y()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-static {v2, v1}, Lcom/mycompany/app/main/MainUtil;->h3(II)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    iget-object p1, v0, Lcom/mycompany/app/web/WebGridDialog;->Q:Lcom/mycompany/app/view/MyButtonCheck;

    .line 39
    .line 40
    if-eqz p1, :cond_4

    .line 41
    .line 42
    iget-object v0, v0, Lcom/mycompany/app/web/WebGridDialog;->Z:Lcom/mycompany/app/web/WebGridAdapter;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebGridAdapter;->A()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    invoke-virtual {p1, v0, v3}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_2
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebGridDialog;->D0:Z

    .line 53
    .line 54
    if-eqz v1, :cond_3

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    iput-boolean v3, v0, Lcom/mycompany/app/web/WebGridDialog;->D0:Z

    .line 58
    .line 59
    iput p1, v0, Lcom/mycompany/app/web/WebGridDialog;->G0:I

    .line 60
    .line 61
    iget-object p1, v0, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 62
    .line 63
    if-nez p1, :cond_5

    .line 64
    .line 65
    :cond_4
    :goto_0
    return-void

    .line 66
    :cond_5
    new-instance v0, Lcom/mycompany/app/web/WebGridDialog$8$1;

    .line 67
    .line 68
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebGridDialog$8$1;-><init>(Lcom/mycompany/app/web/WebGridDialog$8;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebGridDialog$8;->a:Lcom/mycompany/app/web/WebGridDialog;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->S:Lcom/mycompany/app/view/MyRecyclerView;

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->Z:Lcom/mycompany/app/web/WebGridAdapter;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->a0:Lcom/mycompany/app/view/MyManagerGrid;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->x0(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, v0, Lcom/mycompany/app/web/WebGridDialog;->S:Lcom/mycompany/app/view/MyRecyclerView;

    .line 19
    .line 20
    new-instance v1, Lcom/mycompany/app/web/WebGridDialog$8$2;

    .line 21
    .line 22
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebGridDialog$8$2;-><init>(Lcom/mycompany/app/web/WebGridDialog$8;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    return-void
.end method
