.class Lcom/mycompany/app/view/MySnackbar$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/view/MySnackbar;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MySnackbar;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MySnackbar$6;->c:Lcom/mycompany/app/view/MySnackbar;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/view/MySnackbar$6;->c:Lcom/mycompany/app/view/MySnackbar;

    .line 2
    .line 3
    iget v0, p1, Lcom/mycompany/app/view/MySnackbar;->c0:I

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p1, Lcom/mycompany/app/view/MySnackbar;->h:Lcom/mycompany/app/view/MySnackbar$SnackbarListener;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-interface {v0}, Lcom/mycompany/app/view/MySnackbar$SnackbarListener;->c()V

    .line 13
    .line 14
    .line 15
    :cond_1
    invoke-virtual {p1}, Lcom/mycompany/app/view/MySnackbar;->s()V

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lcom/mycompany/app/view/MySnackbar;->d(Lcom/mycompany/app/view/MySnackbar;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
