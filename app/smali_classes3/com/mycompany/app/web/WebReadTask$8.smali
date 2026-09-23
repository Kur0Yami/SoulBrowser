.class Lcom/mycompany/app/web/WebReadTask$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebReadTask;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebReadTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebReadTask$8;->a:Lcom/mycompany/app/web/WebReadTask;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/web/WebReadTask$8;->a:Lcom/mycompany/app/web/WebReadTask;

    .line 4
    .line 5
    iput-object p1, v0, Lcom/mycompany/app/web/WebReadTask;->C:Ljava/lang/String;

    .line 6
    .line 7
    iget-object p1, v0, Lcom/mycompany/app/web/WebReadTask;->b:Landroid/content/Context;

    .line 8
    .line 9
    new-instance v0, Lcom/mycompany/app/web/WebReadTask$8$1;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebReadTask$8$1;-><init>(Lcom/mycompany/app/web/WebReadTask$8;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainApp;->J(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
