.class Lcom/mycompany/app/dialog/DialogEditShort$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogEditShort;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditShort;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditShort$12;->c:Lcom/mycompany/app/dialog/DialogEditShort;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditShort$12;->c:Lcom/mycompany/app/dialog/DialogEditShort;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogEditShort;->b0:Landroid/content/Context;

    .line 4
    .line 5
    sget v1, Lnet/kaki87/soul2/testing/R$string;->not_supported:I

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
