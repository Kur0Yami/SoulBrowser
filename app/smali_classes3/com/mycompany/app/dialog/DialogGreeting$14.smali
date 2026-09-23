.class Lcom/mycompany/app/dialog/DialogGreeting$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogGreeting;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogGreeting;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogGreeting$14;->c:Lcom/mycompany/app/dialog/DialogGreeting;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogGreeting$14;->c:Lcom/mycompany/app/dialog/DialogGreeting;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGreeting;->F0:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogGreeting;->F0:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogGreeting;->i0:Lcom/mycompany/app/web/WebNestView;

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogGreeting;->b0:Landroid/content/Context;

    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->P7(Landroid/content/Context;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
