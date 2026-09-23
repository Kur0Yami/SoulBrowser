.class Lcom/mycompany/app/dialog/DialogEditSearch$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogEditSearch;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditSearch;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditSearch$4;->c:Lcom/mycompany/app/dialog/DialogEditSearch;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditSearch$4;->c:Lcom/mycompany/app/dialog/DialogEditSearch;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->n0:Lcom/mycompany/app/view/MyEditText;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 9
    .line 10
    .line 11
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->n0:Lcom/mycompany/app/view/MyEditText;

    .line 12
    .line 13
    new-instance v1, Lcom/mycompany/app/dialog/DialogEditSearch$4$1;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogEditSearch$4$1;-><init>(Lcom/mycompany/app/dialog/DialogEditSearch$4;)V

    .line 16
    .line 17
    .line 18
    const-wide/16 v2, 0xc8

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method
