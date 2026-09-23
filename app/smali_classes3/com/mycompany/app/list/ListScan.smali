.class public Lcom/mycompany/app/list/ListScan;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/list/ListScan$ListScanListener;,
        Lcom/mycompany/app/list/ListScan$ScanTask;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:I

.field public final c:Z

.field public final d:Lcom/mycompany/app/list/ListScan$ListScanListener;

.field public e:Lcom/mycompany/app/list/ListScan$ScanTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;IZLcom/mycompany/app/list/ListScan$ListScanListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/list/ListScan;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput p2, p0, Lcom/mycompany/app/list/ListScan;->b:I

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/mycompany/app/list/ListScan;->c:Z

    .line 9
    .line 10
    iput-object p4, p0, Lcom/mycompany/app/list/ListScan;->d:Lcom/mycompany/app/list/ListScan$ListScanListener;

    .line 11
    .line 12
    return-void
.end method
