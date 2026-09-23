.class Lcom/mycompany/app/web/WebEmgDialog$31$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic f:I

.field public final synthetic g:Lcom/mycompany/app/web/WebEmgDialog$31;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebEmgDialog$31;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebEmgDialog$31$1;->g:Lcom/mycompany/app/web/WebEmgDialog$31;

    .line 5
    .line 6
    iput p2, p0, Lcom/mycompany/app/web/WebEmgDialog$31$1;->c:I

    .line 7
    .line 8
    iput p3, p0, Lcom/mycompany/app/web/WebEmgDialog$31$1;->f:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog$31$1;->g:Lcom/mycompany/app/web/WebEmgDialog$31;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebEmgDialog$31;->c:Lcom/mycompany/app/web/WebEmgDialog;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->b0:Lcom/mycompany/app/web/WebGridAdapter;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-boolean v2, v0, Lcom/mycompany/app/web/WebEmgDialog;->a0:Z

    .line 11
    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 15
    .line 16
    .line 17
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->Z:Landroidx/appcompat/widget/AppCompatTextView;

    .line 18
    .line 19
    if-nez v1, :cond_2

    .line 20
    .line 21
    :goto_0
    return-void

    .line 22
    :cond_2
    iget-boolean v2, v0, Lcom/mycompany/app/web/WebEmgDialog;->a0:Z

    .line 23
    .line 24
    if-eqz v2, :cond_3

    .line 25
    .line 26
    const/16 v0, 0x8

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_3
    const/4 v2, 0x0

    .line 33
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    iget-object v0, v0, Lcom/mycompany/app/web/WebEmgDialog;->Z:Landroidx/appcompat/widget/AppCompatTextView;

    .line 37
    .line 38
    iget v1, p0, Lcom/mycompany/app/web/WebEmgDialog$31$1;->c:I

    .line 39
    .line 40
    iget v2, p0, Lcom/mycompany/app/web/WebEmgDialog$31$1;->f:I

    .line 41
    .line 42
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->h3(II)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method
