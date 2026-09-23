.class Lcom/mycompany/app/dialog/DialogWebBookList$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogWebBookList;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogWebBookList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookList$4;->c:Lcom/mycompany/app/dialog/DialogWebBookList;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookList$4;->c:Lcom/mycompany/app/dialog/DialogWebBookList;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogWebBookList;->B:Lcom/mycompany/app/main/MainListView2;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListView2;->s()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogWebBookList;->y:Lcom/mycompany/app/dialog/DialogWebBookList$BookListListener;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogWebBookList;->G:Ljava/lang/String;

    .line 15
    .line 16
    invoke-interface {v0, p1}, Lcom/mycompany/app/dialog/DialogWebBookList$BookListListener;->a(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method
