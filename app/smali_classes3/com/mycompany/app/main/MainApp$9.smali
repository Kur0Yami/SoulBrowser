.class Lcom/mycompany/app/main/MainApp$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainApp;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainApp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainApp$9;->c:Lcom/mycompany/app/main/MainApp;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainApp$9;->c:Lcom/mycompany/app/main/MainApp;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainApp;->W0:Ljava/util/ArrayList;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput-object v2, v0, Lcom/mycompany/app/main/MainApp;->W0:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainApp;->a(Lcom/mycompany/app/main/MainApp;Ljava/util/ArrayList;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
