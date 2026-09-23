.class Lcom/mycompany/app/web/WebHmgDialog$29;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebHmgDialog;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebHmgDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebHmgDialog$29;->c:Lcom/mycompany/app/web/WebHmgDialog;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebHmgDialog$29;->c:Lcom/mycompany/app/web/WebHmgDialog;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebHmgDialog;->a0:Lcom/mycompany/app/web/WebGridAdapter;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-boolean v2, v0, Lcom/mycompany/app/web/WebHmgDialog;->Z:Z

    .line 9
    .line 10
    if-nez v2, :cond_1

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    iput-boolean v2, v0, Lcom/mycompany/app/web/WebHmgDialog;->Z:Z

    .line 14
    .line 15
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 16
    .line 17
    .line 18
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/web/WebHmgDialog;->Y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 19
    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/16 v2, 0x8

    .line 27
    .line 28
    if-eq v1, v2, :cond_2

    .line 29
    .line 30
    iget-object v0, v0, Lcom/mycompany/app/web/WebHmgDialog;->Y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    :cond_2
    :goto_0
    return-void
.end method
