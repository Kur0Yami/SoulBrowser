.class Lcom/mycompany/app/setting/SettingSense$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Lcom/mycompany/app/setting/SettingSense;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingSense;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingSense$8;->c:Lcom/mycompany/app/setting/SettingSense;

    .line 5
    .line 6
    iput p2, p0, Lcom/mycompany/app/setting/SettingSense$8;->a:I

    .line 7
    .line 8
    iput p3, p0, Lcom/mycompany/app/setting/SettingSense$8;->b:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingSense$8;->c:Lcom/mycompany/app/setting/SettingSense;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSense;->O1:[I

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget v2, p0, Lcom/mycompany/app/setting/SettingSense$8;->a:I

    .line 9
    .line 10
    if-ne v2, p1, :cond_1

    .line 11
    .line 12
    :goto_0
    return-void

    .line 13
    :cond_1
    iget v2, p0, Lcom/mycompany/app/setting/SettingSense$8;->b:I

    .line 14
    .line 15
    aput p1, v1, v2

    .line 16
    .line 17
    invoke-virtual {v0, v2, p1}, Lcom/mycompany/app/setting/SettingSense;->H0(II)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
