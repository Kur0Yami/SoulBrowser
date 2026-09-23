.class Lcom/mycompany/app/main/MainListView$85;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainListView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainListView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainListView$85;->c:Lcom/mycompany/app/main/MainListView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/main/MainListView$85;->c:Lcom/mycompany/app/main/MainListView;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/mycompany/app/main/MainListView;->z()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Lcom/mycompany/app/main/MainListView;->o:Lcom/mycompany/app/main/MainListListener;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainListListener;->c(Lcom/mycompany/app/dialog/DialogListBook;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget v0, p1, Lcom/mycompany/app/main/MainListView;->d:I

    .line 15
    .line 16
    const/16 v1, 0x19

    .line 17
    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/mycompany/app/main/MainListView;->N()V

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void
.end method
