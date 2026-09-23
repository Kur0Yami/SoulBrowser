.class Lcom/mycompany/app/dialog/DialogWebBookEdit$14$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogWebBookEdit$14;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogWebBookEdit$14;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit$14$1;->c:Lcom/mycompany/app/dialog/DialogWebBookEdit$14;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit$14$1;->c:Lcom/mycompany/app/dialog/DialogWebBookEdit$14;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogWebBookEdit$14;->c:Lcom/mycompany/app/dialog/DialogWebBookEdit;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->c0:Lcom/mycompany/app/dialog/DialogWebBookEdit$BookEditListener;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->i0:Ljava/lang/String;

    .line 10
    .line 11
    iget-wide v3, v0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->B0:J

    .line 12
    .line 13
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->C0:Ljava/lang/String;

    .line 14
    .line 15
    invoke-interface {v1, v3, v4, v2, v5}, Lcom/mycompany/app/dialog/DialogWebBookEdit$BookEditListener;->a(JLjava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogWebBookEdit;->dismiss()V

    .line 19
    .line 20
    .line 21
    return-void
.end method
