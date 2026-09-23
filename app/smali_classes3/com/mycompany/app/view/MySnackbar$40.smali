.class Lcom/mycompany/app/view/MySnackbar$40;
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
    iput-object p1, p0, Lcom/mycompany/app/view/MySnackbar$40;->c:Lcom/mycompany/app/view/MySnackbar;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar$40;->c:Lcom/mycompany/app/view/MySnackbar;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->t0:Lcom/mycompany/app/web/WebNestFrame;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput-object v2, v0, Lcom/mycompany/app/view/MySnackbar;->t0:Lcom/mycompany/app/web/WebNestFrame;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {v1, v2}, Lcom/mycompany/app/web/WebNestFrame;->t(Lcom/mycompany/app/web/WebNestView;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method
