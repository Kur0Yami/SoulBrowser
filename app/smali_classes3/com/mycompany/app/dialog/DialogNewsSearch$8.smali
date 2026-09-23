.class Lcom/mycompany/app/dialog/DialogNewsSearch$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/web/WebSearchAdapter$WebSearchListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogNewsSearch;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogNewsSearch;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogNewsSearch$8;->a:Lcom/mycompany/app/dialog/DialogNewsSearch;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(IZ)V
    .locals 1

    .line 1
    if-gez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogNewsSearch$8;->a:Lcom/mycompany/app/dialog/DialogNewsSearch;

    .line 5
    .line 6
    iget-object p2, p2, Lcom/mycompany/app/dialog/DialogNewsSearch;->f0:Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    .line 7
    .line 8
    if-nez p2, :cond_1

    .line 9
    .line 10
    :goto_0
    return-void

    .line 11
    :cond_1
    new-instance v0, Lcom/mycompany/app/dialog/DialogNewsSearch$8$1;

    .line 12
    .line 13
    invoke-direct {v0, p0, p1}, Lcom/mycompany/app/dialog/DialogNewsSearch$8$1;-><init>(Lcom/mycompany/app/dialog/DialogNewsSearch$8;I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final b()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogNewsSearch$8;->a:Lcom/mycompany/app/dialog/DialogNewsSearch;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsSearch;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsSearch;->c0:Landroid/view/View;

    .line 10
    .line 11
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->i4(Landroid/view/View;)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogNewsSearch;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->i4(Landroid/view/View;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    sub-int/2addr v0, v1

    .line 22
    return v0
.end method

.method public final c()V
    .locals 0

    .line 1
    return-void
.end method

.method public final d()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final g(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogNewsSearch$8;->a:Lcom/mycompany/app/dialog/DialogNewsSearch;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsSearch;->f0:Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    iget-object p2, v0, Lcom/mycompany/app/dialog/DialogNewsSearch;->f0:Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    .line 12
    .line 13
    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    :catch_0
    :goto_0
    return-void
.end method

.method public final h(Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogNewsSearch$8;->a:Lcom/mycompany/app/dialog/DialogNewsSearch;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsSearch;->f0:Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-boolean v2, v0, Lcom/mycompany/app/dialog/DialogNewsSearch;->i0:Z

    .line 9
    .line 10
    if-eqz v2, :cond_1

    .line 11
    .line 12
    :goto_0
    return-void

    .line 13
    :cond_1
    const/4 v2, 0x1

    .line 14
    iput-boolean v2, v0, Lcom/mycompany/app/dialog/DialogNewsSearch;->i0:Z

    .line 15
    .line 16
    new-instance v0, Lcom/mycompany/app/dialog/DialogNewsSearch$8$2;

    .line 17
    .line 18
    invoke-direct {v0, p0, p1}, Lcom/mycompany/app/dialog/DialogNewsSearch$8$2;-><init>(Lcom/mycompany/app/dialog/DialogNewsSearch$8;Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 22
    .line 23
    .line 24
    return-void
.end method
