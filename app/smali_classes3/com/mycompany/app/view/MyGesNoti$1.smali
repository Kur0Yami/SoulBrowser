.class Lcom/mycompany/app/view/MyGesNoti$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/view/MyGesNoti;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyGesNoti;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyGesNoti$1;->c:Lcom/mycompany/app/view/MyGesNoti;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyGesNoti$1;->c:Lcom/mycompany/app/view/MyGesNoti;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/view/MyGesNoti;->j:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyGesNoti;->d()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
