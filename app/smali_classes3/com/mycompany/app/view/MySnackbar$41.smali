.class Lcom/mycompany/app/view/MySnackbar$41;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/mycompany/app/view/MySnackbar$41;->c:Lcom/mycompany/app/view/MySnackbar;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar$41;->c:Lcom/mycompany/app/view/MySnackbar;

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/view/MySnackbar;->c0:I

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-static {v0}, Lcom/mycompany/app/view/MySnackbar;->d(Lcom/mycompany/app/view/MySnackbar;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/mycompany/app/view/MySnackbar;->q()V

    .line 12
    .line 13
    .line 14
    iget-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->A:Lcom/mycompany/app/view/MyButtonImage;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyButtonImage;->i()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->B:Lcom/mycompany/app/view/MyButtonImage;

    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyButtonImage;->i()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    iget-object v0, v0, Lcom/mycompany/app/view/MySnackbar;->z:Landroidx/appcompat/widget/AppCompatTextView;

    .line 37
    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 42
    .line 43
    .line 44
    :cond_3
    :goto_0
    return-void
.end method
