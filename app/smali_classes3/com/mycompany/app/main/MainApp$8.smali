.class Lcom/mycompany/app/main/MainApp$8;
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
    iput-object p1, p0, Lcom/mycompany/app/main/MainApp$8;->c:Lcom/mycompany/app/main/MainApp;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainApp$8;->c:Lcom/mycompany/app/main/MainApp;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainApp;->S0:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/main/MainApp;->T0:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, v0, Lcom/mycompany/app/main/MainApp;->U0:Lcom/mycompany/app/main/MainUri$UriItem;

    .line 8
    .line 9
    iget v4, v0, Lcom/mycompany/app/main/MainApp;->V0:I

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    iput-object v5, v0, Lcom/mycompany/app/main/MainApp;->S0:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v5, v0, Lcom/mycompany/app/main/MainApp;->T0:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v5, v0, Lcom/mycompany/app/main/MainApp;->U0:Lcom/mycompany/app/main/MainUri$UriItem;

    .line 17
    .line 18
    invoke-static {v0, v1, v2, v3, v4}, Lcom/mycompany/app/main/MainApp;->b(Lcom/mycompany/app/main/MainApp;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/main/MainUri$UriItem;I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
