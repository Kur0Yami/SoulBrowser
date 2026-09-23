.class Lcom/mycompany/app/dialog/DialogMenuMain$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/main/MenuIconAdapter$MenuListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogMenuMain;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogMenuMain;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogMenuMain$12;->a:Lcom/mycompany/app/dialog/DialogMenuMain;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/main/MenuIconAdapter$MenuHolder;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogMenuMain$12;->a:Lcom/mycompany/app/dialog/DialogMenuMain;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogMenuMain;->c0:Lcom/mycompany/app/dialog/DialogMenuMain$DownMenuListener;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-interface {p1}, Lcom/mycompany/app/dialog/DialogMenuMain$DownMenuListener;->e()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;II)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogMenuMain$12;->a:Lcom/mycompany/app/dialog/DialogMenuMain;

    .line 2
    .line 3
    iget-object p2, p2, Lcom/mycompany/app/dialog/DialogMenuMain;->c0:Lcom/mycompany/app/dialog/DialogMenuMain$DownMenuListener;

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    invoke-interface {p2, p1, p3}, Lcom/mycompany/app/dialog/DialogMenuMain$DownMenuListener;->b(Landroid/view/View;I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
