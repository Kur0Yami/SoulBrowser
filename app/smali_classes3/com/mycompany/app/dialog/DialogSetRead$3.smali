.class Lcom/mycompany/app/dialog/DialogSetRead$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/main/MainSelectAdapter$MainSelectListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogSetRead;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetRead;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetRead$3;->a:Lcom/mycompany/app/dialog/DialogSetRead;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetRead$3;->a:Lcom/mycompany/app/dialog/DialogSetRead;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetRead;->c0:Lcom/mycompany/app/dialog/DialogSetRead$SetReadListener;

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogSetRead;->d0:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-ne p1, v2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v2, 0x0

    .line 14
    :goto_0
    invoke-interface {v1, v0, v2}, Lcom/mycompany/app/dialog/DialogSetRead$SetReadListener;->a(Ljava/lang/String;Z)V

    .line 15
    .line 16
    .line 17
    :cond_1
    return-void
.end method
