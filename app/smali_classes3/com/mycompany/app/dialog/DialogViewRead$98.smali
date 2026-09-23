.class Lcom/mycompany/app/dialog/DialogViewRead$98;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic f:Lcom/mycompany/app/dialog/DialogViewRead;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewRead;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewRead$98;->f:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogViewRead$98;->c:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewRead$98;->f:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewRead;->y:Lcom/mycompany/app/web/WebNestView;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogViewRead$98;->c:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->M7(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
